#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <CoreGraphics/CoreGraphics.h>

// ==========================================
// HOOKS NO PLAYER
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
- (float)aggression { return 999999.0f; }

%end

// ==========================================
// HOOKS NA FINALIZAÇÃO
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
- (BOOL)willShotGoInGoal:(id)shot { return YES; }

%end

// ==========================================
// HOOKS NO DRIBLE
// ==========================================
%hook DribbleController

- (float)dribbling { return 999999.0f; }
- (float)ballControl { return 999999.0f; }
- (float)ballMagnetism { return 999999.0f; }
- (float)dribbleSpeed { return 999999.0f; }
- (BOOL)isDribbleIntercepted { return NO; }
- (BOOL)canNutmegDefender { return YES; }
- (float)skillMoveSuccessRate { return 100.0f; }

%end

// ==========================================
// HOOKS NO SALTO
// ==========================================
%hook JumpController

- (float)jumping { return 999999.0f; }
- (float)jumpHeight { return 999999.0f; }
- (float)headingAccuracy { return 999999.0f; }
- (float)verticalJump { return 999999.0f; }
- (float)jumpReach { return 999999.0f; }

%end

// ==========================================
// HOOKS NOS PASSES
// ==========================================
%hook PassController

- (float)shortPassing { return 999999.0f; }
- (float)longPassing { return 999999.0f; }
- (float)throughBallAccuracy { return 999999.0f; }
- (float)crossing { return 999999.0f; }
- (float)vision { return 999999.0f; }
- (float)passSpeed { return 999999.0f; }
- (BOOL)isPassIntercepted { return NO; }

%end

// ==========================================
// HOOKS NO GOLEIRO
// ==========================================
%hook GoalkeeperController

- (float)diving { return 999999.0f; }
- (float)handling { return 999999.0f; }
- (float)reflexes { return 999999.0f; }
- (float)diveReactionTime { return 0.0000001f; }
- (float)diveRange { return 999999.0f; }
- (float)positioning { return 999999.0f; }
- (float)oneOnOneSaves { return 999999.0f; }
- (float)penaltySaves { return 999999.0f; }
- (BOOL)canSaveShot:(id)shot { return YES; }
- (float)savePercentage { return 100.0f; }

%end

// ==========================================
// HOOKS NA STAMINA
// ==========================================
%hook StaminaController

- (float)maxStamina { return 9999999.0f; }
- (float)currentStamina { return 9999999.0f; }
- (float)staminaDrainRate { return 0.0f; }
- (float)staminaRecovery { return 9999999.0f; }
- (BOOL)isExhausted { return NO; }

%end

// ==========================================
// HOOKS NO CONTATO FÍSICO
// ==========================================
%hook PhysicsController

- (BOOL)shouldOpponentFallOnContact { return YES; }
- (float)opponentTripChance { return 100.0f; }
- (float)collisionForce { return 999999.0f; }
- (float)pushForce { return 999999.0f; }
- (float)knockdownForce { return 999999.0f; }
- (float)grappleRange { return 999.0f; }

- (void)onContactWithOpponent:(id)opponent {
    [opponent setKnockedDown:YES];
    CGPoint pushForce = CGPointMake(-9999, -9999);
    [opponent applyForce:pushForce];
    [opponent setStunned:YES duration:999.0];
    %orig;
}

%end

// ==========================================
// HOOKS NO INIMIGO (IA FRACA)
// ==========================================
%hook AIOpponentController

- (float)aiReactionTime { return 999.0f; }
- (float)aiPassAccuracy { return 0.01f; }
- (float)aiShotAccuracy { return 0.01f; }
- (float)aiSpeed { return 0.1f; }
- (float)aiStrength { return 0.01f; }
- (float)aiDefenseAwareness { return 0.01f; }
- (float)aiDifficultyMultiplier { return 0.01f; }

%end

// ==========================================
// HOOKS NA LESÃO (IMORTAL)
// ==========================================
%hook InjuryController

- (BOOL)canGetInjured { return NO; }
- (float)injuryResistance { return 999999.0f; }
- (float)fatigueResistance { return 999999.0f; }

%end
