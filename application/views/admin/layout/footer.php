</div>
<!-- /.content-wrapper -->
<footer class="main-footer">
  <strong>Copyright &copy; <a href="<?= base_url('home') ?>">DarkblowPB Reborn</a>
    <?= date('Y') ?>.
  </strong>
  All rights reserved.
  <div class="float-right d-none d-sm-inline-block">
    <b>Version</b> 4.0.0
  </div>
</footer>
</div>
<!-- ./wrapper -->

<!-- jQuery UI 1.11.4 -->
<script src="<?= base_url() ?>assets/admin/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="<?= base_url() ?>assets/admin/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- DataTables -->
<script src="<?= base_url() ?>assets/admin/plugins/datatables/jquery.dataTables.min.js"></script>
<!-- Select2 -->
<script src="<?= base_url() ?>assets/admin/plugins/select2/js/select2.full.min.js"></script>
<!-- ChartJS -->
<script src="<?= base_url() ?>assets/admin/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="<?= base_url() ?>assets/admin/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="<?= base_url() ?>assets/admin/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="<?= base_url() ?>assets/admin/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="<?= base_url() ?>assets/admin/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- Summernote -->
<script src="<?= base_url() ?>assets/admin/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="<?= base_url() ?>assets/admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- dataTables -->
<script src="<?= base_url() ?>assets/admin/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?= base_url() ?>assets/admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="<?= base_url() ?>assets/admin/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="<?= base_url() ?>assets/admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<!-- AdminLTE App -->
<script src="<?= base_url() ?>assets/admin/dist/js/adminlte.js"></script>
<!-- Custom Script -->
<script src="<?= base_url() ?>assets/goodgames/assets/js/custom.js"></script>

<script>
  $(document).ready(function() {
    /* jQueryKnob */

    $('.knob').knob({
      /*change : function (value) {
       //console.log("change : " + value);
       },
       release : function (value) {
       console.log("release : " + value);
       },
       cancel : function () {
       console.log("cancel : " + this.value);
       },*/
      draw: function() {

        // "tron" case
        if (this.$.data('skin') == 'tron') {

          var a = this.angle(this.cv) // Angle
            ,
            sa = this.startAngle // Previous start angle
            ,
            sat = this.startAngle // Start angle
            ,
            ea // Previous end angle
            ,
            eat = sat + a // End angle
            ,
            r = true

          this.g.lineWidth = this.lineWidth

          this.o.cursor &&
            (sat = eat - 0.3) &&
            (eat = eat + 0.3)

          if (this.o.displayPrevious) {
            ea = this.startAngle + this.angle(this.value)
            this.o.cursor &&
              (sa = ea - 0.3) &&
              (ea = ea + 0.3)
            this.g.beginPath()
            this.g.strokeStyle = this.previousColor
            this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, sa, ea, false)
            this.g.stroke()
          }

          this.g.beginPath()
          this.g.strokeStyle = r ? this.o.fgColor : this.fgColor
          this.g.arc(this.xy, this.xy, this.radius - this.lineWidth, sat, eat, false)
          this.g.stroke()

          this.g.lineWidth = 2
          this.g.beginPath()
          this.g.strokeStyle = this.o.fgColor
          this.g.arc(this.xy, this.xy, this.radius - this.lineWidth + 1 + this.lineWidth * 2 / 3, 0, 2 * Math.PI, false)
          this.g.stroke()

          return false
        }
      }
    })
    /* END JQUERY KNOB */

  })
</script>
<script>
  $(document).ready(function() {
    // DataTable
    $('#news_table').dataTable({
      'language': {
        'zeroRecords': 'Nothing Found Here.'
      }
    });
    $('#allplayers_table').dataTable({
      'language': {
        'zeroRecords': 'Nothing Found Here.'
      }
    });
    $('#clientlauncher_table').dataTable({
      'language': {
        'zeroRecords': 'Nothing Found Here.'
      }
    });
    $('#login_events_table').dataTable({
      'language': {
        'zeroRecords': 'Nothing Found Here.'
      }
    });
    $('#mapbonus_events_table').dataTable({
      'language': {
        'zeroRecords': 'Nothing Found Here.'
      }
    });
    $('#playtime_events_table').dataTable({
      'language': {
        'zeroRecords': 'Nothing Found Here.'
      }
    });
    $('#redeemcode_table').dataTable({
      'language': {
        'zeroRecords': 'Nothing Found Here.'
      }
    });
    $('#visit_table').dataTable({
      'language': {
        'zeroRecords': 'Nothing Found Here.'
      }
    });
    $('#bannedvisitor_table').dataTable({
      'language': {
        'zeroRecords': 'Nothing Found Here.'
      }
    });
    $('#voucher_table').dataTable({
      'language': {
        'zeroRecords': 'Nothing Found Here.'
      }
    });
    $('#rankawards_table').dataTable({
      'language': {
        'zeroRecords': 'Nothing Found Here.'
      }
    });
    $('#attendance_table').dataTable({
      'language': {
        'zeroRecords': 'Nothing Found Here.'
      }
    });

    // Form Selection
    $('.reward_selection').select2();
    $('.count_selection').select2();
    $(document).on('select2:open', () => {
      document.querySelector('.select2-search__field').focus();
    });
    $('.summernote_editor').summernote({
      disableResizeEditor: true,
      airMode: false,
    });
  })
</script>
</body>

</html>