module Main where

import Prelude

import Component (component)
import Control.Monad.Aff (launchAff_)
import Control.Monad.Aff.Console (log)
import Control.Monad.Eff (Eff)
import Halogen.Aff as HA
import Halogen.VDom.Driver (runUI)

rerunUI body = launchAff_ do
  log "rerunUI"
  run body

run body = do
  log "run"
  runUI component unit body

-- main :: Eff (HA.HalogenEffects ()) Unit
main = HA.runHalogenAff do
  body <- HA.awaitBody
  log "main"
  run body
