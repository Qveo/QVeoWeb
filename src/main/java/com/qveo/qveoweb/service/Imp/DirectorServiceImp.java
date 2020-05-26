package com.qveo.qveoweb.service.Imp;

import com.qveo.qveoweb.dao.DirectorDao;
import com.qveo.qveoweb.model.Director;
import com.qveo.qveoweb.service.DirectorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.List;

@Service
public class DirectorServiceImp implements DirectorService {

    @Autowired
    UploadFileServiceImp fotoService;

    @Autowired
    DirectorDao directorDao;

    @Override
    public List<Director> getAllDirector() {
        // TODO Auto-generated method stub
        return directorDao.findAll();
    }

    @Override
    @Transactional(readOnly = true)
    public List<Director> findAll() {
        return directorDao.findAll();
    }

    @Override
    @Transactional(readOnly = true)
    public Director getDirector(Integer id) {

        return directorDao.findById(id).orElse(null);
    }

    @Override
    public void save(Director director, MultipartFile foto) throws IOException {

        String fotoTemp;

        if (director.getId() != null) {
            fotoTemp = getDirector(director.getId()).getFoto();
        } else {
            fotoTemp = "";
        }

        directorDao.save(director);

        if (!foto.isEmpty()) {
            try {
                String uniqueFilename = null;

                uniqueFilename = fotoService.copy(foto, 4, director.getId(), director.getNombre());
                director.setFoto("/resources/img/directores/" + uniqueFilename);
            } catch (IOException e) {
                e.printStackTrace();
            }

        } else if (foto.isEmpty()) {
            String uniqueFilename = null;
            uniqueFilename = fotoService.defaultFoto(4, fotoTemp);
            director.setFoto("/resources/img/directores/" + uniqueFilename);

        }

        directorDao.save(director);

    }

    @Override
    @Transactional
    public void delete(Integer id) {

        Director director = getDirector(id);

        fotoService.delete(director.getFoto(), 4);

        directorDao.deleteById(id);

    }

}
