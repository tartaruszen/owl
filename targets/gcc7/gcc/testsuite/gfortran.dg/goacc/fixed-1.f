      INTEGER :: ARGC
      ARGC = COMMAND_ARGUMENT_COUNT ()

!$OMP PARALLEL
!$ACC PARALLEL COPYIN(ARGC)
      IF (ARGC .NE. 0) THEN
         CALL ABORT
      END IF
!$ACC END PARALLEL
!$OMP END PARALLEL

      END