
## baked_potato
function baked_potato {
  advancement revoke @s only mire:item/food/baked_potato

  # Add +1 food
  effect give @s minecraft:saturation 1 0 true
}

advancement baked_potato {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:consume_item",
      "conditions": {
        "item": {
          "items": [
            "minecraft:baked_potato"
          ]
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/food/baked_potato"
  }
}


## beetroot_soup
function beetroot_soup {
  advancement revoke @s only mire:item/food/beetroot_soup

  # Add +5 food
  effect give @s minecraft:saturation 5 0 true
}

advancement beetroot_soup {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:consume_item",
      "conditions": {
        "item": {
          "items": [
            "minecraft:beetroot_soup"
          ]
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/food/beetroot_soup"
  }
}


## bread
function bread {
  advancement revoke @s only mire:item/food/bread

  # Add +1 food
  effect give @s minecraft:saturation 1 0 true
}

advancement bread {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:consume_item",
      "conditions": {
        "item": {
          "items": [
            "minecraft:bread"
          ]
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/food/bread"
  }
}


## cooked_beef
function cooked_beef {
  advancement revoke @s only mire:item/food/cooked_beef

  # Add -4 saturation
  effect give @s minecraft:hunger 1 156 true
}

advancement cooked_beef {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:consume_item",
      "conditions": {
        "item": {
          "items": [
            "minecraft:cooked_beef"
          ]
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/food/cooked_beef"
  }
}


## cooked_cod
function cooked_cod {
  advancement revoke @s only mire:item/food/cooked_cod

  # Add +2 food
  effect give @s minecraft:saturation 2 0 true
}

advancement cooked_cod {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:consume_item",
      "conditions": {
        "item": {
          "items": [
            "minecraft:cooked_cod"
          ]
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/food/cooked_cod"
  }
}


## cooked_porkchop
function cooked_porkchop {
  advancement revoke @s only mire:item/food/cooked_porkchop

  # Add -4 saturation
  effect give @s minecraft:hunger 1 156 true
}

advancement cooked_porkchop {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:consume_item",
      "conditions": {
        "item": {
          "items": [
            "minecraft:cooked_porkchop"
          ]
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/food/cooked_porkchop"
  }
}


## cooked_rabbit
function cooked_rabbit {
  advancement revoke @s only mire:item/food/cooked_rabbit

  # Add +1 food
  effect give @s minecraft:saturation 1 0 true
}

advancement cooked_rabbit {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:consume_item",
      "conditions": {
        "item": {
          "items": [
            "minecraft:cooked_rabbit"
          ]
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/food/cooked_rabbit"
  }
}


## cooked_salmon
function cooked_salmon {
  advancement revoke @s only mire:item/food/cooked_salmon

  # Add +2 food
  effect give @s minecraft:saturation 2 0 true
}

advancement cooked_salmon {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:consume_item",
      "conditions": {
        "item": {
          "items": [
            "minecraft:cooked_salmon"
          ]
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/food/cooked_salmon"
  }
}


## cookie
function cookie {
  advancement revoke @s only mire:item/food/cookie

  effect give @s minecraft:speed 10 1 false
  effect give @s minecraft:haste 10 1 false
}

advancement cookie {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:consume_item",
      "conditions": {
        "item": {
          "items": [
            "minecraft:cookie"
          ]
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/food/cookie"
  }
}


## glow_berries
function glow_berries {
  advancement revoke @s only mire:item/food/glow_berries

  effect give @s minecraft:glowing 30 0 false
  effect give @s minecraft:speed 10 1 false
  effect give @s minecraft:haste 10 1 false
}

advancement glow_berries {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:consume_item",
      "conditions": {
        "item": {
          "items": [
            "minecraft:glow_berries"
          ]
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/food/glow_berries"
  }
}


## mushroom_stew
function mushroom_stew {
  advancement revoke @s only mire:item/food/mushroom_stew

  # Add +5 food
  effect give @s minecraft:saturation 5 0 true
}

advancement mushroom_stew {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:consume_item",
      "conditions": {
        "item": {
          "items": [
            "minecraft:mushroom_stew"
          ]
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/food/mushroom_stew"
  }
}


## porkchop
function porkchop {
  advancement revoke @s only mire:item/food/porkchop

  # Add food:~3 saturation:~2
  effect give @s minecraft:hunger 1 78 true
}

advancement porkchop {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:consume_item",
      "conditions": {
        "item": {
          "items": [
            "minecraft:porkchop"
          ]
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/food/porkchop"
  }
}


## pumpkin_pie
function pumpkin_pie {
  advancement revoke @s only mire:item/food/pumpkin_pie

  # Add +2 food
  effect give @s minecraft:saturation 2 0 true
}

advancement pumpkin_pie {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:consume_item",
      "conditions": {
        "item": {
          "items": [
            "minecraft:pumpkin_pie"
          ]
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/food/pumpkin_pie"
  }
}


## spider_eye
function spider_eye {
  advancement revoke @s only mire:item/food/spider_eye

  effect give @s minecraft:night_vision 30 0 false
}

advancement spider_eye {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:consume_item",
      "conditions": {
        "item": {
          "items": [
            "minecraft:spider_eye"
          ]
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/food/spider_eye"
  }
}


## suspicious_stew
function suspicious_stew {
  advancement revoke @s only mire:item/food/suspicious_stew

  # Add +5 food
  effect give @s minecraft:saturation 5 0 true
}

advancement suspicious_stew {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:consume_item",
      "conditions": {
        "item": {
          "items": [
            "minecraft:suspicious_stew"
          ]
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/food/suspicious_stew"
  }
}


## sweet_berries
function sweet_berries {
  advancement revoke @s only mire:item/food/sweet_berries

  effect give @s minecraft:speed 10 1 false
  effect give @s minecraft:haste 10 1 false
}

advancement sweet_berries {
  "criteria": {
    "requirement": {
      "trigger": "minecraft:consume_item",
      "conditions": {
        "item": {
          "items": [
            "minecraft:sweet_berries"
          ]
        }
      }
    }
  },
  "rewards": {
    "function": "mire:item/food/sweet_berries"
  }
}
