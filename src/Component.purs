module Component where

import Prelude

import Data.Const (Const)
import Data.Maybe (Maybe(..))
import Halogen as H
import Halogen.HTML as HH
import Halogen.HTML.Events as HE

data Action = ToggleState

type State = { on :: Boolean }

component :: forall m. H.Component HH.HTML (Const Void) Unit Void m
component =
  H.mkComponent
    { initialState: const initialState
    , render
    , eval: H.mkEval $ H.defaultEval { handleAction = handleAction }
    }
  where

    initialState :: State
    initialState = { on: false }

    render :: State -> HH.HTML (H.ComponentSlot HH.HTML () m Action) Action
    render state =
      HH.div_
        [ HH.h1_
            [ HH.text "Hello world!" ]
        , HH.p_
            [ HH.text "Why not toggle this button:" ]
        , HH.button
            [ HE.onClick (\_ -> Just ToggleState) ]
            [ HH.text
                if not state.on
                then "Don't push me"
                else "I said don't push me!"
            ]
        ]

    handleAction :: Action -> H.HalogenM State Action () Void m Unit
    handleAction = case _ of
      ToggleState -> void $ H.modify (\state -> { on: not state.on })
