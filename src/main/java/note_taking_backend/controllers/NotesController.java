package note_taking_backend.controllers;

import lombok.Data;
import note_taking_backend.entities.Note;
import note_taking_backend.services.NotesServices;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Data
@RestController
@RequestMapping("/note")
public class NotesController {

    protected final NotesServices notesServices;

    @PostMapping()
    public void createNote(@RequestParam String note) {
        notesServices.createNote(note);
    }

    @GetMapping("/{id}")
    public Note getNoteById(@PathVariable("id") Long id) {
        return notesServices.getNoteById(id);
    }

    @GetMapping("/list")
    public List<Note> getNotes() {
        return notesServices.getNotes();
    }
}
