package _06_overloading;

import java.awt.Color;

public class LeagueOptionPaneRunner {
	public static void main(String[] args) {
		LeagueOptionPane LeaugeOptionPane = new LeagueOptionPane();
		LeagueOptionPane.showMessageDialog("The Leauge Is The Best");
		LeagueOptionPane.showMessageDialog("The League Is The Best", "Message");
		LeagueOptionPane.showMessageDialog("The League Is The Best", "Message", "league.png");
		LeagueOptionPane.showMessageDialog("The League Is The Best", "Message", "league.png", Color.WHITE);
	}
}
