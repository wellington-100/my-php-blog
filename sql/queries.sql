/* Create database */
CREATE DATABASE my_blog_php;

/* Create posts table */
CREATE TABLE post (
    post_id int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(255) NOT NULL,
    url_key VARCHAR(255) NOT NULL,
    image_path VARCHAR(255) NULL,
    content TEXT DEFAULT NULL,
    description VARCHAR(255) DEFAULT NULL,
    published_date DATETIME NOT NULL,
    PRIMARY KEY (post_id),
    UNIQUE KEY url_key (url_key)
) ENGINE=InnoDB;

INSERT INTO post (title, url_key, content, description, published_date) VALUES (
    'Upsetting the being',
    'blog-post-2',
    'Elian, reflectând în tăcerea camerei sale izolate, își aprofunda meditațiile asupra naturii sale enigmatice și a puterii pe care o deținea. Înțelegea că fiecare decizie luată răsuna în eternitate, afectând nu doar prezentul, ci și viitorul nenumăraților indivizi. Își punea întrebări despre moralitatea intervențiilor sale în destinul uman, întrebându-se dacă dreptul de a schimba cursul vieților altora îi aparținea cu adevărat.
    
    Elian își petrecea zilele analizând complexitatea emoțiilor umane, întrebându-se cum poate echilibra binele și răul fără a perturba ordinea naturală. Reflecta la legătura subtilă dintre cauză și efect și la impactul acțiunilor sale asupra acestei dinamici delicate. Își dorea să fie un factor de echilibru, dar conștientiza că fiecare intervenție crea noi ramificații ale destinului.
    
    Pe măsură ce nopțile adânceau, Elian medita la singurătatea care îi însoțea existența. Era un păzitor al timpului, dar totodată un prizonier al solitudinii pe care puterea sa i-o impunea. Această izolare îl făcea să aprecieze și mai mult frumusețea simplă a momentelor umane, a zâmbetelor efemere și a tristeții trecătoare, pe care le observa din umbra anonimatului său.
    
    Elian se întreba adesea despre finalitatea propriei existențe. Cu puterea de a modela timpul, era totuși legat de un fir nevăzut care îl ghida spre un destin necunoscut. Se gândea la posibilitatea ca propria sa cale să fie, de asemenea, predeterminată de forțe mai mari decât el, un joc cosmic al cărui pion era fără să știe.
    
    Reflectând la trecutul său, Elian încerca să înțeleagă originea puterii sale și scopul său ultim. Fiecare acțiune, fiecare decizie pe care o lua, părea să fie o piesă într-un puzzle mult mai mare, un tablou cosmic pe care încă îl descoperea. Se întreba dacă va veni o zi când își va înțelege pe deplin rolul în țesătura complexă a universului.
    
    În final, Elian se reconecta cu convingerea că, indiferent de incertitudinile și greutățile meditațiilor sale, misiunea lui era de a proteja echilibrul fragil al lumii. Era hotărât să continue să folosească puterea sa pentru a aduce speranță și a schimba destine, chiar și în fața unui viitor necunoscut și a unei existențe pline de paradoxuri. Astfel, în lumea vastă și complicată în care trăia, Elian rămânea un far de lumină, un simbol al speranței că schimbarea spre bine este întotdeauna posibilă, indiferent de provocările pe care timpul le-ar putea aduce.tfel, într-o lume în care timpul curge inexorabil, existența lui Elian rămâne un semn al posibilității de schimbare, o amintire că, în mâinile potrivite, chiar și cele mai mari puteri pot fi folosite pentru a aduce binele în loc de rău, lumină în loc de întuneric.
            ',
    'Capitolul I',
    '2024-03-22'
    );