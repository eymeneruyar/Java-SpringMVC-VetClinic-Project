/*
        Author: Süleyman KARACA
        Project Name: Vet Klinik
        Page: ProductRepository Page
        Version: v1.0
        GitHub: https://github.com/slymnkrc
        Date: 17.09.2021
*/
package vetcilinic.Repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import vetcilinic.Entities.Product;

public interface ProductRepository extends JpaRepository<Product, Integer> {
}
