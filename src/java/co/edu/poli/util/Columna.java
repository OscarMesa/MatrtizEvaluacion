
package co.edu.poli.util;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.List;

@Retention(RetentionPolicy.RUNTIME)
public @interface Columna {

    boolean ClavePrimaria() default false;
    boolean AutoNumerico() default false;
    boolean Requered() default false;
    String NameForeingKey(); 
}
