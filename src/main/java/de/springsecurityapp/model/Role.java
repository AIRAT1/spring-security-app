package de.springsecurityapp.model;

import lombok.*;

import javax.persistence.*;
import java.util.Set;

/**
 * Simple JavaBean object that represents role of the user {@link User}.
 *
 * @author Ayrat Hairullin
 * @version 1.0
 */

@Entity
@Table(name = "roles")
@Getter
@Setter
@NoArgsConstructor
@ToString
@Builder
public class Role {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;
    @ManyToMany(mappedBy = "roles")
    private Set<User> users;
}
