package abc;
import java.util.Scanner;
	public class CricketScore {
	    static class Player {
	        int totalruns;
	        int ballsfaced;
	        int fours;
	        int sixes;
	        String howout;
	        String fielder;

	        Player() {
	            totalruns = 0;
	            ballsfaced = 0;
	            fours = 0;
	            sixes = 0;
	            howout = "";
	            fielder = "";
	        }
	    }

	    static class Bowler {
	        int runs;
	        int ballsthrown;
	        int overs;
	        int maidens;
	        int wides;
	        int noballs;
	        float average;

	        Bowler() {
	            runs = 0;
	            ballsthrown = 0;
	            overs = 0;
	            maidens = 0;
	            wides = 0;
	            noballs = 0;
	            average = 0.0f;
	        }
	    }

	    static class Wicket {
	        int atruns;
	        int overnumber;

	        Wicket() {
	            atruns = 0;
	            overnumber = 0;
	        }
	    }

	    static Player[] teamA = new Player[11];
	    static Bowler[] bowlingteamA = new Bowler[11];
	    static Wicket[] wicketsA = new Wicket[11];
	    static int[] runsinoneover = new int[50];
	    static int runsinprevover = 0;
	    static int flagg = 0;
	    static int position = 1;
	    static int undoupdatevariable = 0;
	    static int[] newbatsmancounter = new int[11];
	    static int newbatsmanincrement = 0;
	    static int current = 0;
	    static int extrarunsA = 0;
	    static int extrarunsB = 0;
	    static int bowlingcurrent = 0;
	    static int wicketnumber = 0;
	    static int teamAtotalruns = 0;
	    static int teamBtotalruns = 0;
	    static int teamAtotalovers = 0;
	    static int teamBtotalovers = 0;
	    static char input;

	    public static void main(String[] args) {
	        initialize();
	        finalScore();
	    }

	    static void initialize() {
	        for (int i = 0; i < 11; i++) {
	            teamA[i] = new Player();
	            bowlingteamA[i] = new Bowler();
	            wicketsA[i] = new Wicket();
	            newbatsmancounter[i] = 0;
	        }
	    }

	    static void finalScore() {
	        Scanner sc = new Scanner(System.in);
	        char lastinput;
	        input = '0';
	        while (input != 27) {  // 27 is the ASCII code for ESC
	            // print();
	            while (true) {
	                System.out.println("Enter runs made |0|1|2|3|4|6| (ESC to exit): ");
	                input = sc.next().charAt(0);
	                if (input == 27) break;

	                if (input == '0' || input == '1' || input == '2' || input == '3' || input == '4' || input == '6' || Character.toUpperCase(input) == 'W' || Character.toUpperCase(input) == 'N') {
	                    lastinput = input;
	                    tab1();
	                    break;
	                } else {
	                    System.out.println("Invalid input. Try again.");
	                }
	            }
	        }
	        sc.close();
	    }

	    static void tab1() {
	        boolean calledfromwide = false;

	        start:
	        while (true) {
	            switch (input) {
	                case '0':
	                    if (calledfromwide) {
	                        teamA[current].totalruns += 0;
	                        extrarunsA += 0;
	                    } else {
	                        teamA[current].ballsfaced++;
	                        bowlingteamA[bowlingcurrent].ballsthrown++;
	                        if (bowlingteamA[bowlingcurrent].ballsthrown == 6) {
	                            bowlingteamA[bowlingcurrent].overs++;
	                            bowlingteamA[bowlingcurrent].ballsthrown = 0;
	                            ovatglance(bowlingteamA[bowlingcurrent].overs, teamA[current].totalruns);
	                        }
	                    }
	                    break;
	                case '1':
	                    if (calledfromwide) {
	                        bowlingteamA[bowlingcurrent].runs += 1;
	                        teamA[current].totalruns++;
	                        extrarunsA += 1;
	                    } else {
	                        bowlingteamA[bowlingcurrent].runs += 1;
	                        teamA[current].totalruns += 1;
	                        teamA[current].ballsfaced++;
	                        bowlingteamA[bowlingcurrent].ballsthrown++;
	                        if (bowlingteamA[bowlingcurrent].ballsthrown == 6) {
	                            bowlingteamA[bowlingcurrent].overs++;
	                            bowlingteamA[bowlingcurrent].ballsthrown = 0;
	                            ovatglance(bowlingteamA[bowlingcurrent].overs, teamA[current].totalruns);
	                        }
	                    }
	                    break;
	                case '2':
	                    if (calledfromwide) {
	                        bowlingteamA[bowlingcurrent].runs += 2;
	                        teamA[current].totalruns += 2;
	                        extrarunsA += 2;
	                    } else {
	                        bowlingteamA[bowlingcurrent].runs += 2;
	                        teamA[current].totalruns += 2;
	                        teamA[current].ballsfaced++;
	                        bowlingteamA[bowlingcurrent].ballsthrown++;
	                        if (bowlingteamA[bowlingcurrent].ballsthrown == 6) {
	                            bowlingteamA[bowlingcurrent].overs++;
	                            bowlingteamA[bowlingcurrent].ballsthrown = 0;
	                            ovatglance(bowlingteamA[bowlingcurrent].overs, teamA[current].totalruns);
	                        }
	                    }
	                    break;
	                case '3':
	                    if (calledfromwide) {
	                        bowlingteamA[bowlingcurrent].runs += 3;
	                        teamA[current].totalruns += 3;
	                        extrarunsA += 3;
	                    } else {
	                        bowlingteamA[bowlingcurrent].runs += 3;
	                        teamA[current].totalruns += 3;
	                        teamA[current].ballsfaced++;
	                        bowlingteamA[bowlingcurrent].ballsthrown++;
	                        if (bowlingteamA[bowlingcurrent].ballsthrown == 6) {
	                            bowlingteamA[bowlingcurrent].overs++;
	                            bowlingteamA[bowlingcurrent].ballsthrown = 0;
	                            ovatglance(bowlingteamA[bowlingcurrent].overs, teamA[current].totalruns);
	                        }
	                    }
	                    break;
	                case '4':
	                    if (calledfromwide) {
	                        bowlingteamA[bowlingcurrent].runs += 4;
	                        teamA[current].totalruns += 4;
	                        extrarunsA += 4;
	                        teamA[current].fours++;
	                    } else {
	                        bowlingteamA[bowlingcurrent].runs += 4;
	                        teamA[current].totalruns += 4;
	                        teamA[current].ballsfaced++;
	                        teamA[current].fours++;
	                        bowlingteamA[bowlingcurrent].ballsthrown++;
	                        if (bowlingteamA[bowlingcurrent].ballsthrown == 6) {
	                            bowlingteamA[bowlingcurrent].overs++;
	                            bowlingteamA[bowlingcurrent].ballsthrown = 0;
	                            ovatglance(bowlingteamA[bowlingcurrent].overs, teamA[current].totalruns);
	                        }
	                    }
	                    break;
	                case '6':
	                    if (calledfromwide) {
	                        bowlingteamA[bowlingcurrent].runs += 6;
	                        teamA[current].totalruns += 6;
	                        extrarunsA += 6;
	                        teamA[current].sixes++;
	                    } else {
	                        bowlingteamA[bowlingcurrent].runs += 6;
	                        teamA[current].totalruns += 6;
	                        teamA[current].ballsfaced++;
	                        teamA[current].sixes++;
	                        bowlingteamA[bowlingcurrent].ballsthrown++;
	                        if (bowlingteamA[bowlingcurrent].ballsthrown == 6) {
	                            bowlingteamA[bowlingcurrent].overs++;
	                            bowlingteamA[bowlingcurrent].ballsthrown = 0;
	                            ovatglance(bowlingteamA[bowlingcurrent].overs, teamA[current].totalruns);
	                        }
	                    }
	                    break;
	                case 'W':
	                case 'w':
	                    bowlingteamA[bowlingcurrent].wides++;
	                    calledfromwide = true;
	                    continue start;
	                case 'N':
	                case 'n':
	                    bowlingteamA[bowlingcurrent].noballs++;
	                    calledfromwide = true;
	                    continue start;
	                default:
	                    System.out.println("Invalid input. Try again.");
	            }
	            break;
	        }
	    }

	    static void ovatglance(int overs, int runs) {
	        System.out.println("Overs: " + overs + ", Runs: " + runs);
	    }
	}


