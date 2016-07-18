set nocompatible
set ignorecase
set foldcolumn=1
set fillchars=fold:\ 
set foldtext=v:folddashes.substitute(getline(v:foldstart),'label','','g')
set foldexpr=getline(v:lnum)=~'^label'&&getline(v:lnum+1)!~'^label'?'>1':1
set foldmethod=expr
nmap <Tab> za
imap <Tab> <ESC>:foldclose<CR>
nmap <Enter> zcV:w! /tmp/pxelinux-selection.cfg<CR>:x<CR>
hi Type ctermfg=blue
hi Title ctermfg=white ctermbg=darkcyan cterm=bold
hi Identifier ctermfg=yellow
hi Boolean ctermfg=magenta
hi NonText ctermfg=black
set iskeyword=a-z,A-Z,48-57,_,.,-,44,/,:,@
syn clear
syn match Title "^LABEL.*"lc=6
syn keyword Type LABEL KERNEL APPEND INITRD initrd
syn keyword Identifier netconsole
syn keyword Boolean acpi_irq_balance
syn keyword Boolean acpi_irq_nobalance
syn keyword Boolean acpi_no_auto_ssdt
syn keyword Boolean acpi_pm_good
syn keyword Boolean acpi_serialize
syn keyword Boolean acpi_skip_timer_override
syn keyword Boolean acpi_use_timer_override
syn keyword Boolean add_efi_memmap
syn keyword Boolean autotest
syn keyword Boolean bootmem_debug
syn keyword Boolean ccw_timeout_log
syn keyword Boolean checkreqprot
syn keyword Boolean code_bytes
syn keyword Boolean debug
syn keyword Boolean debug_objects
syn keyword Boolean no_debug_objects
syn keyword Boolean debugpat
syn keyword Boolean disable_mtrr_cleanup
syn keyword Boolean disable_mtrr_trim
syn keyword Boolean disable_timer_pin_1
syn keyword Boolean dynamic_printk
syn keyword Boolean enable_mtrr_cleanup
syn keyword Boolean enable_timer_pin_1
syn keyword Boolean enforcing
syn keyword Boolean erst_disable
syn keyword Boolean force_pal_cache_flush
syn keyword Boolean gpt
syn keyword Boolean hest_disable
syn keyword Boolean i8042.debug
syn keyword Boolean i8042.direct
syn keyword Boolean i8042.dumbkbd
syn keyword Boolean i8042.nokbd
syn keyword Boolean i8042.noloop
syn keyword Boolean i8042.nomux
syn keyword Boolean i8042.nopnp
syn keyword Boolean i8042.reset
syn keyword Boolean i8042.unlock
syn keyword Boolean i8k.ignore_dmi
syn keyword Boolean i8k.force
syn keyword Boolean i8k.power_status
syn keyword Boolean i8k.restricted
syn keyword Boolean ide-pci-generic.all-generic-ide
syn keyword Boolean ignore_loglevel
syn keyword Boolean ima_tcb
syn keyword Boolean initcall_debug
syn keyword Boolean irqfixup
syn keyword Boolean irqpoll
syn keyword Boolean keepinitrd
syn keyword Boolean kgdbwait
syn keyword Boolean lapic
syn keyword Boolean lapic_timer_c2_ok
syn keyword Boolean libata.noacpi
syn keyword Boolean logo.nologo
syn keyword Boolean mce
syn keyword Boolean mfgptfix
syn keyword Boolean no_console_suspend
syn keyword Boolean noaliencache
syn keyword Boolean noalign
syn keyword Boolean noapic
syn keyword Boolean nobats
syn keyword Boolean nocache
syn keyword Boolean nodelayacct
syn keyword Boolean nodisconnect
syn keyword Boolean nodsp
syn keyword Boolean noefi
syn keyword Boolean noexec
syn keyword Boolean noexec32
syn keyword Boolean nofpu
syn keyword Boolean no_file_caps
syn keyword Boolean nohalt
syn keyword Boolean noiotrap
syn keyword Boolean noirqdebug
syn keyword Boolean no_timer_check
syn keyword Boolean noisapnp
syn keyword Boolean noinitrd
syn keyword Boolean nointremap
syn keyword Boolean nointroute
syn keyword Boolean nojitter
syn keyword Boolean nolapic
syn keyword Boolean nolapic_timer
syn keyword Boolean noltlbs
syn keyword Boolean nomca
syn keyword Boolean nomce
syn keyword Boolean nomfgpt
syn keyword Boolean nopat
syn keyword Boolean norandmaps
syn keyword Boolean noreplace-paravirt
syn keyword Boolean noreplace-smp
syn keyword Boolean noresidual
syn keyword Boolean noresume
syn keyword Boolean no-scroll
syn keyword Boolean nosbagart
syn keyword Boolean nosmp
syn keyword Boolean nosoftlockup
syn keyword Boolean noswapaccount
syn keyword Boolean nosync
syn keyword Boolean nousb
syn keyword Boolean nowatchdog
syn keyword Boolean nowb
syn keyword Boolean nox2apic
syn keyword Boolean pnp.debug
syn keyword Boolean processor.nocst
syn keyword Boolean quiet
syn keyword Boolean reset_devices
syn keyword Boolean retain_initrd
syn keyword Boolean ro
syn keyword Boolean rootwait
syn keyword Boolean rw
syn keyword Boolean S
syn keyword Boolean sa1100ir
syn keyword Boolean sched_debug
syn keyword Boolean slub_nomerge
syn keyword Boolean smp-alt-once
syn keyword Boolean smsc-ircc2.nopnp
syn keyword Boolean stacktrace
syn keyword Boolean sysrq_always_enabled
syn keyword Boolean unknown_nmi_panic
syn keyword Boolean watchdog
syn keyword Boolean x2apic_phys
syn keyword Identifier 8250.nr_uarts
syn keyword Identifier 8250.probe_rsa
syn keyword Identifier 8250.share_irqs
syn keyword Identifier 8250.skip_txen_test
syn keyword Identifier acer_wmi.brightness
syn keyword Identifier acer_wmi.force_series
syn keyword Identifier acer_wmi.mailled
syn keyword Identifier acer_wmi.threeg
syn keyword Identifier acpi
syn keyword Identifier acpi.acpica_version
syn keyword Identifier acpi_apic_instance
syn keyword Identifier acpi_backlight
syn keyword Identifier acpi.bfs
syn keyword Identifier acpi_cpufreq.acpi_pstate_strict
syn keyword Identifier acpi.debug_layer
syn keyword Identifier acpi.debug_level
syn keyword Identifier acpi_display_output
syn keyword Identifier acpi_enforce_resources
syn keyword Identifier acpi.gts
syn keyword Identifier acpi.immediate_undock
syn keyword Identifier acpi_irq_isa
syn keyword Identifier acpi_irq_pci
syn keyword Identifier acpi_osi
syn keyword Identifier acpi_os_name
syn keyword Identifier acpi_sci
syn keyword Identifier acpi_sleep
syn keyword Identifier acpi.trace_debug_layer
syn keyword Identifier acpi.trace_debug_level
syn keyword Identifier acpi.trace_method_name
syn keyword Identifier acpi.trace_state
syn keyword Identifier ad1848
syn keyword Identifier advansys
syn keyword Identifier aedsp16
syn keyword Identifier agp
syn keyword Identifier aha152x
syn keyword Identifier aha1542
syn keyword Identifier ahci.ahci_em_messages
syn keyword Identifier ahci.ignore_sss
syn keyword Identifier ahci.marvell_enable
syn keyword Identifier ahci.skip_host_reset
syn keyword Identifier aic79xx
syn keyword Identifier aic7xxx
syn keyword Identifier alignment
syn keyword Identifier amd_iommu
syn keyword Identifier amijoy.map
syn keyword Identifier analog.map
syn keyword Identifier apc
syn keyword Identifier apic
syn keyword Identifier apm
syn keyword Identifier arcrimi
syn keyword Identifier ataflop
syn keyword Identifier atarimouse
syn keyword Identifier atascsi
syn keyword Identifier atkbd.extra
syn keyword Identifier atkbd.reset
syn keyword Identifier atkbd.scroll
syn keyword Identifier atkbd.set
syn keyword Identifier atkbd.softraw
syn keyword Identifier atkbd.softrepeat
syn keyword Identifier autoconf
syn keyword Identifier battery.cache_time
syn keyword Identifier baycom_epp
syn keyword Identifier baycom_par
syn keyword Identifier baycom_ser_fdx
syn keyword Identifier baycom_ser_hdx
syn keyword Identifier bnep.compress_dst
syn keyword Identifier bnep.compress_src
syn keyword Identifier boot_delay
syn keyword Identifier bttv.card
syn keyword Identifier bttv.pll
syn keyword Identifier bttv.radio
syn keyword Identifier bttv.tuner
syn keyword Identifier btusb.disable_scofix
syn keyword Identifier btusb.force_scofix
syn keyword Identifier btusb.ignore_csr
syn keyword Identifier btusb.ignore_dga
syn keyword Identifier btusb.ignore_sniffer
syn keyword Identifier btusb.reset
syn keyword Identifier BusLogic
syn keyword Identifier c101
syn keyword Identifier cachesize
syn keyword Identifier capability.disable
syn keyword Identifier cfg80211.ieee80211_regdom
syn keyword Identifier cgroup_disable
syn keyword Identifier ch.debug
syn keyword Identifier ch.dt_id
syn keyword Identifier ch.dt_lun
syn keyword Identifier ch.init
syn keyword Identifier ch.timeout_init
syn keyword Identifier ch.timeout_move
syn keyword Identifier ch.vendor_counts
syn keyword Identifier ch.vendor_firsts
syn keyword Identifier ch.verbose
syn keyword Identifier cio_ignore
syn keyword Identifier clearcpuid
syn keyword Identifier clock
syn keyword Identifier clocksource
syn keyword Identifier cmo_free_hint
syn keyword Identifier com20020
syn keyword Identifier com90io
syn keyword Identifier com90xx
syn keyword Identifier condev
syn keyword Identifier conmode
syn keyword Identifier console
syn keyword Identifier consoleblank
syn keyword Identifier coredump_filter
syn keyword Identifier cpcihp_generic
syn keyword Identifier cpufreq.debug
syn keyword Identifier cpufreq.debug_ratelimit
syn keyword Identifier crashkernel
syn keyword Identifier cs89x0_dma
syn keyword Identifier cs89x0_media
syn keyword Identifier dasd
syn keyword Identifier db9.dev
syn keyword Identifier debug_core.kgdb_use_con
syn keyword Identifier debug_locks_verbose
syn keyword Identifier decnet.addr
syn keyword Identifier default_hugepagesz
syn keyword Identifier dhash_entries
syn keyword Identifier digi
syn keyword Identifier digiepca
syn keyword Identifier disable
syn keyword Identifier disable_ipv6
syn keyword Identifier dma_debug
syn keyword Identifier dma_debug_driver
syn keyword Identifier dma_debug_entries
syn keyword Identifier dmasound
syn keyword Identifier drm.debug
syn keyword Identifier dscc4.setup
syn keyword Identifier dtc3181e
syn keyword Identifier e1000.copybreak
syn keyword Identifier e1000e.copybreak
syn keyword Identifier earlycon
syn keyword Identifier earlyprintk
syn keyword Identifier eata
syn keyword Identifier edd
syn keyword Identifier eeepc_laptop.hotplug_disabled
syn keyword Identifier ehci_hcd.ignore_oc
syn keyword Identifier ehci_hcd.log2_irq_thresh
syn keyword Identifier ehci_hcd.park
syn keyword Identifier eisa_irq_edge
syn keyword Identifier ekgdboc
syn keyword Identifier elanfreq
syn keyword Identifier elevator
syn keyword Identifier elfcorehdr
syn keyword Identifier ether
syn keyword Identifier fail_make_request
syn keyword Identifier fail_page_alloc
syn keyword Identifier failslab
syn keyword Identifier fd_mcs
syn keyword Identifier fdomain
syn keyword Identifier floppy
syn keyword Identifier ftrace
syn keyword Identifier ftrace_dump_on_oops
syn keyword Identifier ftrace_filter
syn keyword Identifier ftrace_graph_filter
syn keyword Identifier ftrace_notrace
syn keyword Identifier fuse.max_user_bgreq
syn keyword Identifier fuse.max_user_congthresh
syn keyword Identifier gamma
syn keyword Identifier gart_fix_e820
syn keyword Identifier gcov_persist
syn keyword Identifier gdth
syn keyword Identifier gvp11
syn keyword Identifier hashdist
syn keyword Identifier hcl
syn keyword Identifier hd
syn keyword Identifier hid.debug
syn keyword Identifier highmem
syn keyword Identifier highres
syn keyword Identifier hisax
syn keyword Identifier hlt
syn keyword Identifier hpet
syn keyword Identifier hugepages
syn keyword Identifier hugepagesz
syn keyword Identifier hvc_iucv
syn keyword Identifier hvc_iucv_allow
syn keyword Identifier i2c_bus
syn keyword Identifier i7300_idle.debug
syn keyword Identifier i7300_idle.forceload
syn keyword Identifier i7300_idle.throttle_low_limit
syn keyword Identifier i8042.debug
syn keyword Identifier i8042.noaux
syn keyword Identifier i8042.panicblink
syn keyword Identifier i810
syn keyword Identifier i915.fbpercrtc
syn keyword Identifier i915.lvds_downclock
syn keyword Identifier i915.modeset
syn keyword Identifier i915.powersave
syn keyword Identifier ibmmcascsi
syn keyword Identifier icn
syn keyword Identifier ide_cd_mod.debug_mask
syn keyword Identifier ide-core.nodma
syn keyword Identifier ide_gd_mod.debug_mask
syn keyword Identifier ide_pci_generic.all_generic_ide
syn keyword Identifier idle
syn keyword Identifier ihash_entries
syn keyword Identifier ima_audit
syn keyword Identifier ima_hash
syn keyword Identifier in2000
syn keyword Identifier init
syn keyword Identifier initrd
syn keyword Identifier inport.irq
syn keyword Identifier intel_iommu
syn keyword Identifier inttest
syn keyword Identifier io7
syn keyword Identifier ioatdma.ioat_dca_enabled
syn keyword Identifier ioatdma.ioat_initial_desc_count
syn keyword Identifier ioatdma.ioat_interrupt_style
syn keyword Identifier ioatdma.ioat_pending_level
syn keyword Identifier ioatdma.ioat_ring_alloc_order
syn keyword Identifier ioatdma.ioat_ring_max_alloc_order
syn keyword Identifier io_delay
syn keyword Identifier iomem
syn keyword Identifier iommu
syn keyword Identifier ip
syn keyword Identifier ip2
syn keyword Identifier ips
syn keyword Identifier ipv6.autoconf
syn keyword Identifier ipv6.disable
syn keyword Identifier ipv6.disable_ipv6
syn keyword Identifier isapnp
syn keyword Identifier isolcpus
syn keyword Identifier iucv
syn keyword Identifier iwlagn.11n_disable
syn keyword Identifier iwlagn.11n_disable50
syn keyword Identifier iwlagn.amsdu_size_8K
syn keyword Identifier iwlagn.amsdu_size_8K50
syn keyword Identifier iwlagn.antenna
syn keyword Identifier iwlagn.debug
syn keyword Identifier iwlagn.debug50
syn keyword Identifier iwlagn.disable_hw_scan
syn keyword Identifier iwlagn.fw_restart4965
syn keyword Identifier iwlagn.fw_restart50
syn keyword Identifier iwlagn.queues_num
syn keyword Identifier iwlagn.queues_num50
syn keyword Identifier iwlagn.swcrypto
syn keyword Identifier iwlagn.swcrypto50
syn keyword Identifier iwlcore.led_mode
syn keyword Identifier iwlcore.no_sleep_autoadjust
syn keyword Identifier ixgb.copybreak
syn keyword Identifier js
syn keyword Identifier kernelcore
syn keyword Identifier keyboard.brl_nbchords
syn keyword Identifier keyboard.brl_timeout
syn keyword Identifier kgdbdbgp
syn keyword Identifier kgdb.kgdb_use_con
syn keyword Identifier kgdboc
syn keyword Identifier kgdboc.kgdboc
syn keyword Identifier kmac
syn keyword Identifier kmemleak
syn keyword Identifier kstack
syn keyword Identifier kvm-amd.nested
syn keyword Identifier kvm-amd.npt
syn keyword Identifier kvm.ignore_msrs
syn keyword Identifier kvm_intel.bypass_guest_pf
syn keyword Identifier kvm-intel.bypass_guest_pf
syn keyword Identifier kvm_intel.emulate_invalid_guest_state
syn keyword Identifier kvm-intel.emulate_invalid_guest_state
syn keyword Identifier kvm_intel.ept
syn keyword Identifier kvm-intel.ept
syn keyword Identifier kvm_intel.flexpriority
syn keyword Identifier kvm-intel.flexpriority
syn keyword Identifier kvm_intel.ple_gap
syn keyword Identifier kvm_intel.ple_window
syn keyword Identifier kvm_intel.unrestricted_guest
syn keyword Identifier kvm-intel.unrestricted_guest
syn keyword Identifier kvm_intel.vpid
syn keyword Identifier kvm-intel.vpid
syn keyword Identifier kvm.oos_shadow
syn keyword Identifier l2cap.enable_ertm
syn keyword Identifier l2cap.max_transmit
syn keyword Identifier l2cr
syn keyword Identifier l3cr
syn keyword Identifier libahci.ahci_em_messages
syn keyword Identifier libahci.ignore_sss
syn keyword Identifier libahci.skip_host_reset
syn keyword Identifier libata.acpi_gtf_filter
syn keyword Identifier libata.allow_tpm
syn keyword Identifier libata.atapi_an
syn keyword Identifier libata.atapi_dmadir
syn keyword Identifier libata.atapi_enabled
syn keyword Identifier libata.atapi_passthru16
syn keyword Identifier libata.ata_probe_timeout
syn keyword Identifier libata.dma
syn keyword Identifier libata.force
syn keyword Identifier libata.fua
syn keyword Identifier libata.ignore_hpa
syn keyword Identifier libata.noacpi
syn keyword Identifier lmb
syn keyword Identifier load_ramdisk
syn keyword Identifier lockdep.lock_stat
syn keyword Identifier lockdep.prove_locking
syn keyword Identifier lockd.nlm_grace_period
syn keyword Identifier lockd.nlm_max_connections
syn keyword Identifier lockd.nlm_tcpport
syn keyword Identifier lockd.nlm_timeout
syn keyword Identifier lockd.nlm_udpport
syn keyword Identifier lockd.nsm_use_hostnames
syn keyword Identifier log_buf_len
syn keyword Identifier logibm.irq
syn keyword Identifier loglevel
syn keyword Identifier lp
syn keyword Identifier lpj
syn keyword Identifier ltpc
syn keyword Identifier mac5380
syn keyword Identifier mac80211.ieee80211_default_rc_algo
syn keyword Identifier machtype
syn keyword Identifier machvec
syn keyword Identifier max_addr
syn keyword Identifier maxcpus
syn keyword Identifier max_loop
syn keyword Identifier max_luns
syn keyword Identifier max_report_luns
syn keyword Identifier mcatest
syn keyword Identifier mce
syn keyword Identifier md
syn keyword Identifier mdacon
syn keyword Identifier mem
syn keyword Identifier memchunk
syn keyword Identifier memmap
syn keyword Identifier memory_corruption_check
syn keyword Identifier memory_corruption_check_period
syn keyword Identifier memory_corruption_check_size
syn keyword Identifier memtest
syn keyword Identifier mfgpt_irq
syn keyword Identifier mga
syn keyword Identifier min_addr
syn keyword Identifier mini2440
syn keyword Identifier mminit_loglevel
syn keyword Identifier mousedev.tap_time
syn keyword Identifier mousedev.xres
syn keyword Identifier mousedev.yres
syn keyword Identifier movablecore
syn keyword Identifier mpu401
syn keyword Identifier MTD_Partition
syn keyword Identifier mtdparts
syn keyword Identifier MTD_Region
syn keyword Identifier mtdset
syn keyword Identifier mtouchusb.raw_coordinates
syn keyword Identifier mtrr_chunk_size
syn keyword Identifier mtrr_gran_size
syn keyword Identifier mtrr_spare_reg_nr
syn keyword Identifier n2
syn keyword Identifier ncr5380
syn keyword Identifier ncr53c400
syn keyword Identifier ncr53c400a
syn keyword Identifier ncr53c406a
syn keyword Identifier ncr53c8xx
syn keyword Identifier NCR_D700
syn keyword Identifier netdev
syn keyword Identifier netpoll.carrier_timeout
syn keyword Identifier nf_conntrack.acct
syn keyword Identifier nf_conntrack.expect_hashsize
syn keyword Identifier nf_conntrack.hashsize
syn keyword Identifier nf_conntrack_ipv4.hashsize
syn keyword Identifier nfsaddrs
syn keyword Identifier nfs.cache_getent
syn keyword Identifier nfs.cache_getent_timeout
syn keyword Identifier nfs.callback_tcpport
syn keyword Identifier nfs.enable_ino64
syn keyword Identifier nfs.idmap_cache_timeout
syn keyword Identifier nfsroot
syn keyword Identifier nmi_debug
syn keyword Identifier nmi_watchdog
syn keyword Identifier no387
syn keyword Identifier noclflush
syn keyword Identifier nofxsr
syn keyword Identifier nohlt
syn keyword Identifier no-hlt
syn keyword Identifier nohz
syn keyword Identifier nosep
syn keyword Identifier notsc
syn keyword Identifier noxsave
syn keyword Identifier nozomi.debug
syn keyword Identifier nptcg
syn keyword Identifier nr_cpus
syn keyword Identifier nr_uarts
syn keyword Identifier numa_zonelist_order
syn keyword Identifier ohci1394_dma
syn keyword Identifier olpc_ec_timeout
syn keyword Identifier omap_mux
syn keyword Identifier onenand.bdry
syn keyword Identifier opl3
syn keyword Identifier oprofile.cpu_type
syn keyword Identifier oprofile.timer
syn keyword Identifier osst
syn keyword Identifier panic
syn keyword Identifier parkbd.mode
syn keyword Identifier parkbd.port
syn keyword Identifier parport
syn keyword Identifier parport_init_mode
syn keyword Identifier pas16
syn keyword Identifier pas2
syn keyword Identifier pause_on_oops
syn keyword Identifier pcbit
syn keyword Identifier pci
syn keyword Identifier pcie_aspm
syn keyword Identifier pcie_pme
syn keyword Identifier pci_hotplug.debug
syn keyword Identifier pci_hotplug.debug_acpi
syn keyword Identifier pci_slot.debug
syn keyword Identifier pcmv
syn keyword Identifier pdcchassis
syn keyword Identifier percpu_alloc
syn keyword Identifier pirq
syn keyword Identifier pl2303.debug
syn keyword Identifier plip
syn keyword Identifier pmtmr
syn keyword Identifier pnpacpi
syn keyword Identifier pnpbios
syn keyword Identifier pnp_reserve_dma
syn keyword Identifier pnp_reserve_io
syn keyword Identifier pnp_reserve_irq
syn keyword Identifier pnp_reserve_mem
syn keyword Identifier ports
syn keyword Identifier power_meter.force_cap_on
syn keyword Identifier print-fatal-signals
syn keyword Identifier printk.time
syn keyword Identifier processor.ignore_ppc
syn keyword Identifier processor.ignore_tpc
syn keyword Identifier processor.latency_factor
syn keyword Identifier processor.max_cstate
syn keyword Identifier profile
syn keyword Identifier prompt_ramdisk
syn keyword Identifier psmouse.proto
syn keyword Identifier psmouse.rate
syn keyword Identifier psmouse.resetafter
syn keyword Identifier psmouse.resolution
syn keyword Identifier psmouse.resync_time
syn keyword Identifier psmouse.smartscroll
syn keyword Identifier pss
syn keyword Identifier pty.legacy_count
syn keyword Identifier r128
syn keyword Identifier raid
syn keyword Identifier ramdisk_blocksize
syn keyword Identifier ramdisk_size
syn keyword Identifier rcupdate.blimit
syn keyword Identifier rcupdate.qhimark
syn keyword Identifier rcupdate.qlowmark
syn keyword Identifier rdinit
syn keyword Identifier reboot
syn keyword Identifier relax_domain_level
syn keyword Identifier reserve
syn keyword Identifier reservetop
syn keyword Identifier resume
syn keyword Identifier resume_offset
syn keyword Identifier rfcomm.channel_mtu
syn keyword Identifier rfcomm.disable_cfc
syn keyword Identifier rfcomm.l2cap_ertm
syn keyword Identifier rfcomm.l2cap_mtu
syn keyword Identifier rfkill.default_state
syn keyword Identifier rhash_entries
syn keyword Identifier riscom8
syn keyword Identifier root
syn keyword Identifier rootdelay
syn keyword Identifier rootflags
syn keyword Identifier rootfstype
syn keyword Identifier sbni
syn keyword Identifier sbs.cache_time
syn keyword Identifier sco.disable_esco
syn keyword Identifier scsi_default_dev_flags
syn keyword Identifier scsi_dev_flags
syn keyword Identifier scsi_logging_level
syn keyword Identifier scsi_mod.default_dev_flags
syn keyword Identifier scsi_mod.inq_timeout
syn keyword Identifier scsi_mod.max_luns
syn keyword Identifier scsi_mod.max_report_luns
syn keyword Identifier scsi_mod.scan
syn keyword Identifier scsi_mod.scsi_logging_level
syn keyword Identifier scsi_transport_iscsi.debug_conn
syn keyword Identifier scsi_transport_iscsi.debug_session
syn keyword Identifier security
syn keyword Identifier selinux
syn keyword Identifier serialnumber
syn keyword Identifier sg.allow_dio
syn keyword Identifier sg.def_reserved_size
syn keyword Identifier sg.scatter_elem_sz
syn keyword Identifier shapers
syn keyword Identifier show_lapic
syn keyword Identifier show_msr
syn keyword Identifier sim710
syn keyword Identifier simeth
syn keyword Identifier simscsi
syn keyword Identifier slram
syn keyword Identifier slub_debug
syn keyword Identifier slub_max_order
syn keyword Identifier slub_min_objects
syn keyword Identifier slub_min_order
syn keyword Identifier smart2
syn keyword Identifier smsc75xx.turbo_mode
syn keyword Identifier smsc95xx.turbo_mode
syn keyword Identifier smsc-ircc2.ircc_cfg
syn keyword Identifier smsc-ircc2.ircc_dma
syn keyword Identifier smsc-ircc2.ircc_fir
syn keyword Identifier smsc-ircc2.ircc_irq
syn keyword Identifier smsc-ircc2.ircc_sir
syn keyword Identifier smsc-ircc2.ircc_transceiver
syn keyword Identifier snd-ad1816a
syn keyword Identifier snd-ad1848
syn keyword Identifier snd-ali5451
syn keyword Identifier snd-als100
syn keyword Identifier snd-als4000
syn keyword Identifier snd-azt2320
syn keyword Identifier snd.cards_limit
syn keyword Identifier snd-cmi8330
syn keyword Identifier snd-cmipci
syn keyword Identifier snd-cs4231
syn keyword Identifier snd-cs4232
syn keyword Identifier snd-cs4236
syn keyword Identifier snd-cs4281
syn keyword Identifier snd-cs46xx
syn keyword Identifier snd.debug
syn keyword Identifier snd-dt019x
syn keyword Identifier snd-dummy
syn keyword Identifier snd-emu10k1
syn keyword Identifier snd-ens1370
syn keyword Identifier snd-ens1371
syn keyword Identifier snd-es1688
syn keyword Identifier snd-es18xx
syn keyword Identifier snd-es1938
syn keyword Identifier snd-es1968
syn keyword Identifier snd-es968
syn keyword Identifier snd-fm801
syn keyword Identifier snd-gusclassic
syn keyword Identifier snd-gusextreme
syn keyword Identifier snd-gusmax
syn keyword Identifier snd-hda-intel
syn keyword Identifier snd_hda_intel.bdl_pos_adj
syn keyword Identifier snd_hda_intel.beep_mode
syn keyword Identifier snd_hda_intel.enable
syn keyword Identifier snd_hda_intel.enable_msi
syn keyword Identifier snd_hda_intel.id
syn keyword Identifier snd_hda_intel.index
syn keyword Identifier snd_hda_intel.model
syn keyword Identifier snd_hda_intel.position_fix
syn keyword Identifier snd_hda_intel.power_save
syn keyword Identifier snd_hda_intel.power_save_controller
syn keyword Identifier snd_hda_intel.probe_mask
syn keyword Identifier snd_hda_intel.probe_only
syn keyword Identifier snd_hda_intel.single_cmd
syn keyword Identifier snd-hdsp
syn keyword Identifier snd-ice1712
syn keyword Identifier snd-intel8x0
syn keyword Identifier snd-interwave
syn keyword Identifier snd-interwave-stb
syn keyword Identifier snd-korg1212
syn keyword Identifier snd-maestro3
syn keyword Identifier snd.major
syn keyword Identifier snd-mpu401
syn keyword Identifier snd-mtpav
syn keyword Identifier snd-nm256
syn keyword Identifier snd-opl3sa2
syn keyword Identifier snd-opti92x-ad1848
syn keyword Identifier snd-opti92x-cs4231
syn keyword Identifier snd-opti93x
syn keyword Identifier snd_pcm.maximum_substreams
syn keyword Identifier snd_pcm_oss.adsp_map
syn keyword Identifier snd_pcm_oss.dsp_map
syn keyword Identifier snd_pcm_oss.nonblock_open
syn keyword Identifier snd_pcm.preallocate_dma
syn keyword Identifier snd-pmac
syn keyword Identifier snd-rme32
syn keyword Identifier snd-rme96
syn keyword Identifier snd-rme9652
syn keyword Identifier snd-sb16
syn keyword Identifier snd-sb8
syn keyword Identifier snd-sbawe
syn keyword Identifier snd_seq_dummy.duplex
syn keyword Identifier snd_seq_dummy.ports
syn keyword Identifier snd_seq.seq_client_load
syn keyword Identifier snd_seq.seq_default_timer_card
syn keyword Identifier snd_seq.seq_default_timer_class
syn keyword Identifier snd_seq.seq_default_timer_device
syn keyword Identifier snd_seq.seq_default_timer_resolution
syn keyword Identifier snd_seq.seq_default_timer_sclass
syn keyword Identifier snd_seq.seq_default_timer_subdevice
syn keyword Identifier snd-serial
syn keyword Identifier snd-sgalaxy
syn keyword Identifier snd.slots
syn keyword Identifier snd-sonicvibes
syn keyword Identifier snd-sun-amd7930
syn keyword Identifier snd-sun-cs4231
syn keyword Identifier snd_timer.timer_limit
syn keyword Identifier snd_timer.timer_tstamp_monotonic
syn keyword Identifier snd-trident
syn keyword Identifier snd-usb-audio
syn keyword Identifier snd-via82xx
syn keyword Identifier snd-virmidi
syn keyword Identifier snd-wavefront
syn keyword Identifier snd-ymfpci
syn keyword Identifier softlockup_panic
syn keyword Identifier soundcore.preclaim_oss
syn keyword Identifier specialix
syn keyword Identifier spia_fio_base
syn keyword Identifier spia_io_base
syn keyword Identifier spia_peddr
syn keyword Identifier spia_pedr
syn keyword Identifier spurious.irqfixup
syn keyword Identifier spurious.noirqdebug
syn keyword Identifier sr_mod.xa_test
syn keyword Identifier sscape
syn keyword Identifier st
syn keyword Identifier sti
syn keyword Identifier stifb
syn keyword Identifier sti_font
syn keyword Identifier sunrpc.max_resvport
syn keyword Identifier sunrpc.min_resvport
syn keyword Identifier sunrpc.pool_mode
syn keyword Identifier sunrpc.tcp_slot_table_entries
syn keyword Identifier sunrpc.udp_slot_table_entries
syn keyword Identifier swiotlb
syn keyword Identifier switches
syn keyword Identifier sym53c416
syn keyword Identifier t128
syn keyword Identifier tcp_bic.beta
syn keyword Identifier tcp_bic.fast_convergence
syn keyword Identifier tcp_bic.initial_ssthresh
syn keyword Identifier tcp_bic.low_window
syn keyword Identifier tcp_bic.max_increment
syn keyword Identifier tcp_bic.smooth_part
syn keyword Identifier tcp_cubic.beta
syn keyword Identifier tcp_cubic.bic_scale
syn keyword Identifier tcp_cubic.fast_convergence
syn keyword Identifier tcp_cubic.hystart
syn keyword Identifier tcp_cubic.hystart_detect
syn keyword Identifier tcp_cubic.hystart_low_window
syn keyword Identifier tcp_cubic.initial_ssthresh
syn keyword Identifier tcp_cubic.tcp_friendliness
syn keyword Identifier tcp_htcp.use_bandwidth_switch
syn keyword Identifier tcp_htcp.use_rtt_scaling
syn keyword Identifier tcp_hybla.rtt0
syn keyword Identifier tcp_vegas.alpha
syn keyword Identifier tcp_vegas.beta
syn keyword Identifier tcp_vegas.gamma
syn keyword Identifier tdfx
syn keyword Identifier test_suspend
syn keyword Identifier thash_entries
syn keyword Identifier thermal.act
syn keyword Identifier thermal.crt
syn keyword Identifier thermal.nocrt
syn keyword Identifier thermal.off
syn keyword Identifier thermal.psv
syn keyword Identifier thermal.tzp
syn keyword Identifier thinkpad_acpi.brightness_enable
syn keyword Identifier thinkpad_acpi.brightness_mode
syn keyword Identifier thinkpad_acpi.enable
syn keyword Identifier thinkpad_acpi.experimental
syn keyword Identifier thinkpad_acpi.fan_control
syn keyword Identifier thinkpad_acpi.force_load
syn keyword Identifier thinkpad_acpi.hotkey_report_mode
syn keyword Identifier thinkpad_acpi.id
syn keyword Identifier thinkpad_acpi.index
syn keyword Identifier thinkpad_acpi.volume_capabilities
syn keyword Identifier thinkpad_acpi.volume_control
syn keyword Identifier thinkpad_acpi.volume_mode
syn keyword Identifier tmscsim
syn keyword Identifier topology
syn keyword Identifier tp720
syn keyword Identifier tpm_suspend_pcr
syn keyword Identifier tpm_tis.force
syn keyword Identifier tpm_tis.hid
syn keyword Identifier tpm_tis.interrupts
syn keyword Identifier tpm_tis.itpm
syn keyword Identifier trace_buf_size
syn keyword Identifier trace_event
syn keyword Identifier trix
syn keyword Identifier tsc
syn keyword Identifier u14-34f
syn keyword Identifier uart401
syn keyword Identifier uart6850
syn keyword Identifier uhash_entries
syn keyword Identifier uhci_hcd.debug
syn keyword Identifier uhci_hcd.ignore_oc
syn keyword Identifier uhci-hcd.ignore_oc
syn keyword Identifier usbcore.autosuspend
syn keyword Identifier usbcore.blinkenlights
syn keyword Identifier usbcore.initial_descriptor_timeout
syn keyword Identifier usbcore.old_scheme_first
syn keyword Identifier usbcore.usbfs_snoop
syn keyword Identifier usbcore.use_both_schemes
syn keyword Identifier usbhid.ignoreled
syn keyword Identifier usbhid.mousepoll
syn keyword Identifier usbhid.quirks
syn keyword Identifier usb_libusual.bias
syn keyword Identifier usbserial.debug
syn keyword Identifier usb_storage.delay_use
syn keyword Identifier usb-storage.delay_use
syn keyword Identifier usb_storage.option_zero_cd
syn keyword Identifier usb_storage.quirks
syn keyword Identifier usb-storage.quirks
syn keyword Identifier usb_storage.swi_tru_install
syn keyword Identifier userpte
syn keyword Identifier vdso
syn keyword Identifier vdso32
syn keyword Identifier vector
syn keyword Identifier vga
syn keyword Identifier via_velocity.rx_copybreak
syn keyword Identifier video
syn keyword Identifier video.allow_duplicates
syn keyword Identifier video.brightness_switch_enabled
syn keyword Identifier virtio_net.csum
syn keyword Identifier virtio_net.gso
syn keyword Identifier virtio_net.napi_weight
syn keyword Identifier vmalloc
syn keyword Identifier vmhalt
syn keyword Identifier vmpanic
syn keyword Identifier vmpoff
syn keyword Identifier vt.cur_default
syn keyword Identifier vt.default_blu
syn keyword Identifier vt.default_grn
syn keyword Identifier vt.default_red
syn keyword Identifier vt.default_utf8
syn keyword Identifier vt.global_cursor_default
syn keyword Identifier vt.italic
syn keyword Identifier vt.underline
syn keyword Identifier waveartist
syn keyword Identifier wd33c93
syn keyword Identifier wd7000
syn keyword Identifier wmi.debug_dump_wdg
syn keyword Identifier wmi.debug_event
syn keyword Identifier x86_mrst_timer
syn keyword Identifier xd
syn keyword Identifier xd_geo
syn keyword Identifier xirc2ps_cs
