package note_taking_backend.services;

import lombok.Data;
import note_taking_backend.entities.Note;
import note_taking_backend.repositories.NotesRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Data
@Service
public class NotesServices {

    protected final NotesRepository notesRepository;

    public void createNote(String note) {
        notesRepository.save(Note.builder()
                .note(note)
                .build());
    }

    public Note getNoteById(Long id) {
        return notesRepository.findById(id).orElse(null);
    }

    public List<Note> getNotes() {
        return notesRepository.findAll();
    }
}
