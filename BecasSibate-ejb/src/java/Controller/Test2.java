/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import javax.ejb.Stateless;

/**
 *
 * @author Hermanos-Jimenez
 */
@Stateless
public class Test2 implements Test2Local {

    @Override
    public String out() {
        return "Jair Jimenez";
    }
}
