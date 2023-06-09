package med.voll.api.paciente;

import jakarta.persistence.Embeddable;
import jakarta.persistence.Embedded;
import jakarta.validation.Valid;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotNull;
import med.voll.api.medico.DadosEndereco;

public record DadosAtualizacaoPaciente(
        @NotNull Long id,

        @Email
        String email,

        String nome,

        String telefone,

        @Embedded @Valid
        DadosEndereco endereco) {
}
