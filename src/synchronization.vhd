package synchronization_pkg is
  type event_t is (cleared, set);

  function is_set (
    signal event : event_t)
    return boolean;

  procedure set (
    signal event : out event_t);

  procedure clear (
    signal event : out event_t);

  procedure wait_on (
    signal event : event_t);

  procedure wait_on (
    signal event       : in  event_t;
    constant timeout   : in  time;
    variable timed_out : out boolean);
end package synchronization_pkg;

package body synchronization_pkg is
  function is_set (
    signal event : event_t)
    return boolean is
  begin
    return true;
  end;

  procedure set (
    signal event : out event_t) is
  begin
  end;

  procedure clear (
    signal event : out event_t) is
  begin
  end;

  procedure wait_on (
    signal event : event_t) is
  begin
    wait for 1 ns;
  end;

  procedure wait_on (
    signal event       : in  event_t;
    constant timeout   : in  time;
    variable timed_out : out boolean) is
  begin
    wait for 1 ns;
    timed_out := false;
  end;

end package body synchronization_pkg;
