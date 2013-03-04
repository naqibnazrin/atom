__PackageName__View = require '__package-name__/lib/__package-name__-view'
RootView = require 'root-view'

# This spec is focused because it starts with an `f`. Remove the `f`
# to unfocus the spec.
#
# Press meta-alt-ctrl-s to run the specs
fdescribe "__PackageName__View", ->
  __packageName__ = null

  beforeEach ->
    window.rootView = new RootView
    __packageName__ = window.loadPackage('__packageName__', activateImmediately: true)

  describe "when the __package-name__:toggle event is triggered", ->
    it "attaches and then detaches the view", ->
      expect(rootView.find('.__package-name__')).not.toExist()
      rootView.trigger '__package-name__:toggle'
      expect(rootView.find('.__package-name__')).toExist()
      rootView.trigger '__package-name__:toggle'
      expect(rootView.find('.__package-name__')).not.toExist()
