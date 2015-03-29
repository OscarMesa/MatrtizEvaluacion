/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package co.edu.poli.sql;

/**
 *
 * @author omesagar
 */
public class EvaluacionSQL {
    /**
     * Eeste metodo retorna la consultar para cargar todos los estados 
     * @return 
     */
    public static String CargarModulos()
    {
        return "SELECT * FROM modulos WHERE Codigo LIKE ? OR Descripcion LIKE ? OR Grado LIKE ? OR YearI LIKE ? OR YearF LIKE ? LIMIT 10";
    }
    
    /**
     * Eeste metodo retorna la consultar para cargar todos las normas de un modulo 
     * @return 
     */
    public static String CargarNormasModulo()
    {
        return "SELECT n.* FROM norma n INNER JOIN modulo_norma mn ON mn.id_norma = n.id_norma WHERE mn.id_modulo = ? AND (n.codigo_norma LIKE ? OR n.descripcion LIKE ?) LIMIT 10";
    }
    
    /**
     * Eeste metodo retorna la consultar para cargar todos los elementos de una norma 
     * @return 
     */
    public static String CargarElementoNormas()
    {
        return "SELECT e.* FROM elementos e INNER JOIN normas_elementos ne ON ne.id_elemento = e.id_elemento WHERE ne.id_norma=? AND (e.codigo_elemento LIKE ? OR e.descripcion LIKE ?) LIMIT 10";
    }
    
    /**
     * Eeste metodo retorna la consultar para cargar todos los elementos de una norma 
     * @return 
     */
    public static String CargarResultadoModulo()
    {
        return "SELECT ra.* FROM resultado_aprendizaje ra INNER JOIN resultado_modulo m ON m.id_resultado=ra.id_resultado WHERE m.id_modulo=? AND (ra.codigo_resultado LIKE ? OR ra.descripcion LIKE ?) LIMIT 10";
    }
    
    /**
     * Eeste metodo retorna la consultar para cargar todas las evidencias de un modulo 
     * @return 
     */
    public static String CargarEvidenciaModulo()
    {
        return "SELECT e.*,te.descripcion tpdescripcion FROM evidencia e INNER JOIN tipo_evidencias te ON te.id_tipo_evidencia =e.id_tipo_evidencia WHERE e.id_modulo = ? AND (e.descripcion LIKE ? OR te.descripcion LIKE ?) LIMIT 10";
    }

    public static String GuardarEncabezadoEvaluacion() {
        return "INSERT INTO encabezado_evaluacion (id_modulo,descripcion) VALUES(?,?)";
    }
    
    public static String GuardarEncabezadoNorma(){
        return "INSERT INTO encabezado_evaluacion_norma(id_encabezado,id_norma)";
    }
    
    public static String GuardarElementoCopetencia(){
        return "INSERT INTO encabezado_evaluacion_(id_encabezado,id_norma)";
    }
    
    public static String coutnEncabezadoEvaluacionList(String where) {
        return "SELECT COUNT(*) count\n" +
                "FROM encabezado_evaluacion ee \n" +
                "INNER JOIN modulos m ON m.Codigo = ee.id_modulo \n" +
                "INNER JOIN norma n ON n.id_norma = ee.id_norma\n" +
                "INNER JOIN elementos el ON el.id_elemento = ee.id_elemento\n" +
                "INNER JOIN evidencia e ON e.id_evidencia = ee.id_evidencia\n" +
                "INNER JOIN resultado_aprendizaje ra ON ra.id_resultado = ee.id_resultado "+where;
    }
    
    public static String encabezadoEvaluacionList(String where)
    {
        return "SELECT ee.id_encabezado id_encabezado, m.Descripcion modulo, n.codigo_norma norma, e.descripcion, ra.codigo_resultado resultado, e.descripcion evidencia, el.codigo_elemento codigo_elemento, ee.descripcion descripcion_encab \n" +
                "FROM encabezado_evaluacion ee \n" +
                "INNER JOIN modulos m ON m.Codigo = ee.id_modulo \n" +
                "INNER JOIN norma n ON n.id_norma = ee.id_norma\n" +
                "INNER JOIN elementos el ON el.id_elemento = ee.id_elemento\n" +
                "INNER JOIN evidencia e ON e.id_evidencia = ee.id_evidencia\n" +
                "INNER JOIN resultado_aprendizaje ra ON ra.id_resultado = ee.id_resultado " + where;
    }
    
}
