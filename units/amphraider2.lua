unitDef = {
  unitname               = [[amphraider2]],
  name                   = [[Archer]],
  description            = [[Amphibious Raider/Skirmish Bot (Land)]],
  acceleration           = 0.2,
  activateWhenBuilt      = true,
  amphibious             = [[1]],
  brakeRate              = 0.4,
  buildCostEnergy        = 260,
  buildCostMetal         = 260,

  buildoptions           = {
  },

  buildPic               = [[amphraider2.png]],
  buildTime              = 260,
  canAttack              = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canstop                = [[1]],
  category               = [[SINK]],
  collisionVolumeTest    = 1,
  corpse                 = [[DEAD]],

  customParams           = {
    helptext	 = [[The Archer uses a powerful water cutting jet to hit enemies. While the water cannon loses firepower and range as its water tank empties, it can be refilled by standing in a body of water.]],
    maxwatertank = [[300]],
  },

  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 2,
  footprintZ             = 2,
  hideDamage             = false,
  iconType               = [[amphraider]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  leaveTracks            = true,
  mass                   = 411,
  maxDamage              = 800,
  maxSlope               = 36,
  maxVelocity            = 2.3,
  maxWaterDepth          = 5000,
  minCloakDistance       = 75,
  movementClass          = [[AKBOT2]],
  noChaseCategory        = [[TERRAFORM SATELLITE FIXEDWING GUNSHIP HOVER SHIP SWIM SUB LAND FLOAT SINK TURRET]],
  objectName             = [[amphraider2.s3o]],
  script                 = [[amphraider2.lua]],
  seismicSignature       = 4,
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {
    explosiongenerators = {
      [[custom:watercannon_muzzle]],
    },
  },

  side                   = [[ARM]],
  sightDistance          = 500,
  sonarDistance          = 300,
  trackOffset            = 0,
  trackStrength          = 8,
  trackStretch           = 1,
  trackType              = [[ComTrack]],
  trackWidth             = 22,
  turnRate               = 1200,
  upright                = true,

  weapons                = {
    {
      def                = [[WATERCANNON]],
      badTargetCategory  = [[FIXEDWING]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs             = {

    WATERCANNON = {
      name                    = [[Water Cannon]],
      alphaDecay              = 0,
      areaOfEffect            = 16,
      burst		     		  = 3,
      burstRate		          = 0.03,
      --cegTag		      = [[torpedo_trail]],
      --colormap                = [[0.6 0.8 1 1 0.6 0.8 1 1]],
      craterBoost             = 0,
      craterMult              = 0,

      damage                  = {
        default = 0.5,
        planes  = 0.5,
        subs    = 0.1,
      },

      explosionGenerator      = [[custom:watercannon_impact]],
      impulseBoost            = 20,
      impulseFactor           = 70,
      intensity               = 0.7,
      interceptedByShieldType = 1,
      myGravity		          = 0.65,
      noGap                   = false,
      noSelfDamage            = true,
      projectiles	          = 6,
      range                   = 400,
      reloadtime              = 0.1,
      rgbColor                = [[0.6 0.8 1]],
      rgbColor2               = [[0.6 0.8 1]],
      separation              = 2.5,
      stages		          = 5,
      --size                  = 0,
      sizeDecay               = 0,
      --soundStart              = [[weapon/hiss]],
      soundStartVolume        = 4,
      soundTrigger	      = true,
      startsmoke              = [[0]],
      targetBorder	      = true,
      texture1	              = [[wake]],
      tolerance               = 5000,
      turret                  = true,
      weaponTimer             = 0.1,
      weaponType              = [[Cannon]],
      weaponVelocity          = 500,
    },

  },


  featureDefs            = {

    DEAD      = {
      description      = [[Wreckage - Grebe]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 800,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      height           = [[20]],
      hitdensity       = [[100]],
      metal            = 104,
      object           = [[wreck2x2b.s3o]],
      reclaimable      = true,
      reclaimTime      = 104,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

    HEAP      = {
      description      = [[Debris - Grebe]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 800,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 2,
      footprintZ       = 2,
      hitdensity       = [[100]],
      metal            = 52,
      object           = [[debris2x2c.s3o]],
      reclaimable      = true,
      reclaimTime      = 52,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


  },

}

return lowerkeys({ amphraider2 = unitDef })
