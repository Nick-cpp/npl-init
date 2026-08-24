ETCPREFIX=/etc/npl-init

install:
	mkdir -p "${DESTDIR}/sbin" "${DESTDIR}/usr/bin" "${DESTDIR}/etc"

	cp init "${DESTDIR}/sbin/"
	cp npli "${DESTDIR}/usr/bin/"
	cp -rf npl-init "${DESTDIR}/etc/"
	cp -rf acpi "${DESTDIR}/etc/"

	ln -sf ${ETCPREFIX}/npl-halt "${DESTDIR}/sbin/reboot"
	ln -sf ${ETCPREFIX}/npl-halt "${DESTDIR}/sbin/poweroff"
	ln -sf ${ETCPREFIX}/npl-halt "${DESTDIR}/sbin/halt"
	ln -sf ${ETCPREFIX}/npl-halt "${DESTDIR}/sbin/shutdown"

	chmod +x "${DESTDIR}/sbin/init"
	chmod +x "${DESTDIR}/usr/bin/npli"
	chmod +x "${DESTDIR}${ETCPREFIX}/lib"
	chmod +x "${DESTDIR}${ETCPREFIX}/npl-halt"

	chmod +x "${DESTDIR}${ETCPREFIX}/sv/"*

	chmod +x "${DESTDIR}/etc/acpi/PWRB/00000080"
	chmod +x "${DESTDIR}/etc/acpi/PWRF/00000080"
uninstall:
	rm -rf ${DESTDIR}${ETCPREFIX} \
	${DESTDIR}/etc/acpi
	rm -f ${DESTDIR}${ETCPREFIX}/npl-halt \
	${DESTDIR}/sbin/init \
	${DESTDIR}/usr/bin/npli

.PHONY: install uninstall