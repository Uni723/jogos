// Código no evento Step do jogador

// Verifica se as teclas WASD estão pressionadas
var up = keyboard_check(ord("W"));
var down = keyboard_check(ord("S"));
var left = keyboard_check(ord("A"));
var right = keyboard_check(ord("D"));

// Verifica se o jogador está se movendo
if (up || down || left || right) {
    // Se o jogador está se movendo, muda o sprite para o de correndo
    if (sprite_index != sCorrendo) {
        sprite_index = sCorrendo;
    }
    
    // Calcula a direção do movimento
    move_dir = point_direction(0, 0, (right - left), (down - up));
    
    // Inverte o sprite se estiver se movendo para a esquerda
    if (right - left < 0) {
        if (image_xscale != -1.4) {
            image_xscale = -1.4; // Inverte o sprite horizontalmente
        }
    } else if (right - left > 0) {
        if (image_xscale != 1.4) {
            image_xscale = 1.4; // Restaura a escala normal
        }
    }
} else {
    // Se o jogador não está se movendo, mantém o sprite atual ou muda de volta
    // Pode ser que você tenha um sprite de "parado", por exemplo sPlayer
    if (sprite_index != sPlayer) {
        sprite_index = sPlayer;
    }
    
    // Não altera a escala horizontal se o jogador está parado
    // Apenas mantém a última direção
}

// Atualiza a velocidade e a direção
velh = (right - left) * max_vel; // -5 se apenas o A estiver pressionado
velv = (down - up) * max_vel;

if (up || down || left || right) {
    vel = max_vel;
} else {
    vel = lerp(vel, 0, 0.1);
}

velh = lengthdir_x(vel, move_dir);
velv = lengthdir_y(vel, move_dir);

// Chama a função que controla a arma
usa_arma();
