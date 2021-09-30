**run highstate -- update all salt members**
`salt \* state.highstate`

**run highstate for minions named \*sensor\***
`salt \*sensor\* state.highstate`

**remove minion from salt grid**
`salt-key -d \*sensor\*`