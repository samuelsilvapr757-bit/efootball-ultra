#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>

// ==========================================
// HOOKS NO PLAYER - VELOCIDADE E FORÇA
// ==========================================
%hook PlayerController

- (float)sprintSpeed { return 999999.0f; }
- (float)acceleration { return 999999.0f; }
- (float)topSpeed { return 999999.0f; }
- (float)strength { return 999999.0f; }
- (float)balance { return 999999.0f; }
- (float)agility { return 999999.0f; }
- (float)stamina { return 9999999.0f; }
- (float)bodyChecking { return 999999.0f; }

%end

// ==========================================
// HOOKS NA FINALIZAÇÃO - SEMPRE GOL
// ==========================================
%hook ShotController

- (float)finishing { return 999999.0f; }
- (float)shotPower { return 999999.0f; }
- (float)shotAccuracy { return 999999.0f; }
- (float)longShots { return 999999.0f; }
- (float)volleys { return 999999.0f; }
- (float)freekicks { return 999999.0f; }
- (float)curve { return 999999.0f; }
- (float)headers { return 999999.0f; }
- (float)penalties { return 999999.0f; }

%end

// ==========================================
// HOOKS NO DRIBLE - NUNCA PERDE A BOLA
// ==========================================
%hook DribbleController

- (float)dribbling { return 999999.0f; }
- (float)ballControl { return 999999.0f; }

%end

// ==========================================
// HOOKS NO SALTO - SUPER SALTO
// ==========================================
%hook JumpController

- (float)jumping { return 999999.0f; }
- (float)jumpHeight { return 999999.0f; }
- (float)headingAccuracy { return 999999.0f; }

%end

// ==========================================
// HOOKS NOS PASSES - PERFEITOS
// ==========================================
%hook PassController

- (float)shortPassing { return 999999.0f; }
- (float)longPassing { return 999999.0f; }
- (float)throughBallAccuracy { return 999999.0f; }
- (float)crossing { return 999999.0f; }
- (float)vision { return 999999.0f; }

%end

// ==========================================
// HOOKS NO GOLEIRO - DEFENDE TUDO
// ==========================================
%hook GoalkeeperController

- (float)diving { return 999999.0f; }
- (float)handling { return 999999.0f; }
- (float)reflexes { return 999999.0f; }
- (float)diveReactionTime { return 0.0000001f; }
- (float)diveRange { return 999999.0f; }
- (float)positioning { return 999999.0f; }

%end

// ==========================================
// HOOKS NA STAMINA - INFINITA
// ==========================================
%hook StaminaController

- (float)maxStamina { return 9999999.0f; }
- (float)currentStamina { return 9999999.0f; }
- (float)staminaDrainRate { return 0.0f; }

%end

// ==========================================
// HOOKS NO INIMIGO - IA FRACA
// ==========================================
%hook AIOpponentController

- (float)aiReactionTime { return 999.0f; }
- (float)aiPassAccuracy { return 0.01f; }
- (float)aiShotAccuracy { return 0.01f; }
- (float)aiSpeed { return 0.1f; }
- (float)aiStrength { return 0.01f; }

%end

// ==========================================
// HOOKS NA LESÃO - IMORTAL
// ==========================================
%hook InjuryController

- (BOOL)canGetInjured { return NO; }
- (float)injuryResistance { return 999999.0f; }

%end
