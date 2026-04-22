command: "echo"

refreshFrequency: false

render: (output) -> """
  <div class="rc-wrap">
    <div class="tabs">
      <button class="tab active" data-target="regina">Regina Cæli</button>
      <button class="tab" data-target="angelus">Angelus</button>
      <button class="tab" data-target="memorare">Memorare</button>
    </div>

    <div class="panel active" id="regina">
      <h1>Regina Cæli</h1>
      <p class="lead">
        Regína cæli, lætáre, allelúia:<br/>
        Quia quem meruísti portáre, allelúia,<br/>
        Resurréxit, sicut dixit, allelúia.<br/>
        Ora pro nobis Deum, allelúia.
      </p>

      <p class="vr">
        <span class="v">V.</span> Gaude et lætáre, Virgo María, allelúia.<br/>
        <span class="r">R.</span> Quia surréxit Dóminus vere, allelúia.
      </p>

      <p class="oremus"><em>Orémus.</em></p>
      <p class="prayer">
        Deus, qui per resurrectiónem Fílii tui, Dómini nostri Iesu Christi,
        mundum lætificáre dignátus es: præsta, quǽsumus; ut per eius Genetrícem
        Vírginem Maríam, perpétuæ capiámus gáudia vitæ. Per eúndem Christum
        Dóminum nostrum.<br/>
        <span class="r">R.</span> Amen.
      </p>
    </div>

    <div class="panel" id="angelus">
      <h1>Angelus</h1>

      <p class="vr">
        <span class="v">V.</span> Angelus Dómini nuntiávit Maríæ.<br/>
        <span class="r">R.</span> Et concépit de Spíritu Sancto.
      </p>
      <p class="ave"><em>Ave María…</em></p>

      <p class="vr">
        <span class="v">V.</span> Ecce ancílla Dómini.<br/>
        <span class="r">R.</span> Fiat mihi secúndum verbum tuum.
      </p>
      <p class="ave"><em>Ave María…</em></p>

      <p class="vr">
        <span class="v">V.</span> Et Verbum caro factum est.<br/>
        <span class="r">R.</span> Et habitávit in nobis.
      </p>
      <p class="ave"><em>Ave María…</em></p>

      <p class="vr">
        <span class="v">V.</span> Ora pro nobis, sancta Dei Génetrix.<br/>
        <span class="r">R.</span> Ut digni efficiámur promissiónibus Christi.
      </p>

      <p class="oremus"><em>Orémus.</em></p>
      <p class="prayer">
        Grátiam tuam, quǽsumus, Dómine, méntibus nostris infúnde;
        ut qui, Ángelo nuntiánte, Christi Fílii tui incarnatiónem cognóvimus,
        per passiónem eius et crucem, ad resurrectiónis glóriam perducámur.
        Per eúndem Christum Dóminum nostrum.<br/>
        <span class="r">R.</span> Amen.
      </p>
    </div>

    <div class="panel" id="memorare">
      <h1>Memorare</h1>
      <p class="prayer">
        Remember, O most gracious Virgin Mary, that never was it known
        that anyone who fled to thy protection, implored thy help, or
        sought thy intercession was left unaided.
      </p>
      <p class="prayer">
        Inspired by this confidence, I fly unto thee, O Virgin of
        virgins, my Mother; to thee do I come, before thee I stand,
        sinful and sorrowful.
      </p>
      <p class="prayer">
        O Mother of the Word Incarnate, despise not my petitions, but
        in thy mercy hear and answer me.<br/>
        <span class="r">R.</span> Amen.
      </p>
    </div>
  </div>
"""

afterRender: (domEl) ->
  tabs = domEl.querySelectorAll('.tab')
  panels = domEl.querySelectorAll('.panel')
  tabs.forEach (tab) ->
    tab.addEventListener 'click', ->
      target = tab.getAttribute('data-target')
      tabs.forEach (t) -> t.classList.remove('active')
      panels.forEach (p) -> p.classList.remove('active')
      tab.classList.add('active')
      domEl.querySelector('#' + target).classList.add('active')

style: """
  top: 60px
  left: 40px
  width: 480px
  padding: 22px 26px
  font-family: -apple-system, "Helvetica Neue", serif
  color: #f5ecd7
  background: rgba(20, 15, 10, 0.55)
  backdrop-filter: blur(8px)
  -webkit-backdrop-filter: blur(8px)
  border: 1px solid rgba(212, 175, 55, 0.35)
  border-radius: 10px
  box-shadow: 0 8px 24px rgba(0,0,0,0.35)
  line-height: 1.55
  font-size: 17px

  .tabs
    display: flex
    gap: 8px
    margin-bottom: 14px
    border-bottom: 1px solid rgba(212, 175, 55, 0.3)
    padding-bottom: 8px

  .tab
    background: transparent
    border: 1px solid rgba(212, 175, 55, 0.35)
    color: #f5ecd7
    padding: 6px 14px
    font-size: 15px
    font-family: inherit
    border-radius: 6px
    cursor: pointer
    transition: all 0.15s ease

    &:hover
      background: rgba(212, 175, 55, 0.12)

    &.active
      background: rgba(212, 175, 55, 0.22)
      color: #e9c46a
      border-color: rgba(212, 175, 55, 0.7)

  .panel
    display: none

    &.active
      display: block

  h1
    margin: 0 0 14px 0
    font-family: "Baskerville", "Hoefler Text", serif
    font-style: italic
    font-weight: 400
    font-size: 28px
    color: #e9c46a
    text-align: center
    letter-spacing: 1px

  p
    margin: 0 0 12px 0

  .lead
    font-style: italic

  .vr
    font-size: 16px
    opacity: 0.92

  .v, .r
    color: #e9c46a
    font-weight: 600
    margin-right: 4px

  .ave
    font-style: italic
    text-align: center
    opacity: 0.8
    font-size: 15px
    margin: -4px 0 10px 0

  .oremus
    text-align: center
    color: #e9c46a
    margin-top: 8px

  .prayer
    font-size: 16px
    opacity: 0.95
"""
