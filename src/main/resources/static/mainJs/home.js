
//--------------------------------------- Project Information - Start ---------------------------------------//
/*
    Name: Eymen ERUYAR
    Project Name: Vet Klinik
    Page: Home JS
    Version: v1.1
    GitHub: https://github.com/eymeneruyar
    Date: 22.09.2021
*/
//--------------------------------------- Project Information - End -----------------------------------------//

//------------------------------------------ Charts and Toastr Definition - Start ------------------------------------------//
$(window).on('load', function () {
    'use strict';

    var $barColor = '#f3f3f3';
    var $trackBgColor = '#EBEBEB';
    var $textMutedColor = '#b9b9c3';
    var $budgetStrokeColor2 = '#dcdae3';
    var $goalStrokeColor2 = '#51e5a8';
    var $strokeColor = '#ebe9f1';
    var $textHeadingColor = '#5e5873';
    var $earningsStrokeColor2 = '#28c76f66';
    var $earningsStrokeColor3 = '#28c76f33';

    var $earningsChart = document.querySelector('#earnings-chart');

    var earningsChartOptions;
    var earningsChart;
    var isRtl = $('html').attr('data-textdirection') === 'rtl';

    var netAmount = 0;

    // On load Toast
    setTimeout(function () {

        $.ajax({
            url:"http://localhost:8080/accountActivity",
            success: function (data){

                toastr['success'](
                    'Sayın' + ' ' +  data.result.nameInfo + ' ' + data.result.surnameInfo + ' ' + 'Vet Klinik uygulamasına Hoşgeldiniz 👋',
                    {
                        closeButton: true,
                        tapToDismiss: false,
                        rtl: isRtl
                    }
                );

            },
            error: function (err){
                console.log(err)
            }
        })

    }, 2000);

    //-------------------------------------- Donut Chart - Start --------------------------------------//
    $.ajax({
        url: './home/priceChart',
        type: 'get',
        contentType : 'application/json; charset=utf-8',
        success: function (data) {
            //console.log(data)
            //console.log(data.netEarning)
            netAmount = data.netEarning
            $("#net").text(data.netEarning + "₺")
            //--------------- Earnings Chart ---------------
            //----------------------------------------------
            earningsChartOptions = {
                chart: {
                    type: 'donut',
                    height: 120,
                    toolbar: {
                        show: false
                    }
                },
                dataLabels: {
                    enabled: false
                },
                series: [data.payInTotal, data.payOutTotal, data.netEarning],
                legend: { show: false },
                comparedResult: [2, -3, 8],
                labels: ['Giriş', 'Çıkış', 'Net Kar'],
                stroke: { width: 0 },
                colors: [$earningsStrokeColor2, $earningsStrokeColor3, window.colors.solid.success],
                grid: {
                    padding: {
                        right: -20,
                        bottom: -8,
                        left: -20
                    }
                },
                plotOptions: {
                    pie: {
                        startAngle: -10,
                        donut: {
                            labels: {
                                show: true,
                                name: {
                                    offsetY: 15
                                },
                                value: {
                                    offsetY: -15,
                                    formatter: function (val) {
                                        return parseInt(val) + '₺';
                                    }
                                },
                                total: {
                                    show: true,
                                    offsetY: 15,
                                    label: 'Net Kar',
                                    formatter: function (w) {
                                        return data.netEarning + "₺";
                                    }
                                }
                            }
                        }
                    }
                },
                responsive: [
                    {
                        breakpoint: 1325,
                        options: {
                            chart: {
                                height: 100
                            }
                        }
                    },
                    {
                        breakpoint: 1200,
                        options: {
                            chart: {
                                height: 120
                            }
                        }
                    },
                    {
                        breakpoint: 1045,
                        options: {
                            chart: {
                                height: 100
                            }
                        }
                    },
                    {
                        breakpoint: 992,
                        options: {
                            chart: {
                                height: 120
                            }
                        }
                    }
                ]
            };
            earningsChart = new ApexCharts($earningsChart, earningsChartOptions);
            earningsChart.render();
        },
        error: function (err) {
            console.log(err)
            alert("İşlem işlemi sırısında bir hata oluştu!");
        }
    })
    //-------------------------------------- Donut Chart - End --------------------------------------//


    $.ajax({
        url: './home/generalStatics',
        type: 'get',
        contentType : 'application/json; charset=utf-8',
        success: function (data) {
            //console.log(data)
            $("#saleCount").text(data.saleCount)
            $("#customerCount").text(data.customerCount)
            $("#productCount").text(data.productCount)
            $("#netAmount").text(netAmount + "₺")

        },
        error: function (err) {
            console.log(err)
            alert("İstatistik verileri gelirken bir hata oluştu!");
        }
    })

    $.ajax({
        url: './home/patientTable',
        type: 'get',
        contentType : 'application/json; charset=utf-8',
        success: function (data) {
            //console.log(data)
            let html = ``
            for (let i = 0; i < data.length; i++) {
                const itm = data[i]
                html += `<tr>
                               <td>${itm.customer.cuName} ${itm.customer.cuSurname}</td>
                               <td>${itm.customer.cuPhone}</td>
                               <td>${itm.paName}</td>
                               <td>${itm.paAirTagNo}</td>
                               <td>${itm.paType}</td>
                               <td>${itm.paKind}</td>
                               <td>${itm.paSexType}</td>
                         </tr>`
            }
            $("#patientTable").html(html)
        },
        error: function (err) {
            console.log(err)
            alert("Günlük hasta tablosu verileri gelirken bir hata oluştu!");
        }
    })

});
//------------------------------------------ Charts and Toastr Definition - End ------------------------------------------//

//------------------------------------------ Pagination Calendar Info - Start ------------------------------------------//

(function (window, document, $) {
    'use strict';

    if ($(window).width() < 768) {
        dynamicPagination(2);
    } else {
        dynamicPagination(5);
    }

    function dynamicPagination(visiblePages) {

        var totalPage = 0

        $.ajax({
            url: './home/totalPage',
            type: 'get',
            contentType : 'application/json; charset=utf-8',
            success: function (data) {

                totalPage = data

                // default pagination
                $('.page1-links').twbsPagination({
                    totalPages: totalPage,
                    visiblePages: visiblePages,
                    prev: 'Geri',
                    next: 'İleri',
                    first: null,
                    last: null,
                    startPage: 1,
                    onPageClick: function (event, page) {

                        function allCalendarResult(){

                            $.ajax({
                                url: './home/pageCalendar/' + (page-1),
                                type: 'get',
                                contentType : 'application/json; charset=utf-8',
                                success: function (data) {
                                    //console.log(data)
                                    //console.log(data[0].location)
                                    var startDate = data[0].start.split(" ") //Randevu Başlangıç tarihi
                                    var endDate = data[0].end.split(" ") //Randevu bitiş tarihi
                                    //console.log(startDate)
                                    //console.log(endDate)
                                    if(data.length > 0){
                                    let html = ``
                                    html = `<div class="meetup-header d-flex align-items-center">
                                        <div class="meetup-day">
                                            <h6 class="mb-0">${startDate[0]}</h6>
                                            <h3 class="mb-0">${startDate[2]}</h3>
                                        </div>
                                        <div class="my-auto">
                                            <h4 class="card-title mb-25">${data[0].title}</h4>
                                        </div>
                                    </div>
                                    <div class="media">
                                        <div class="avatar bg-light-primary rounded mr-1">
                                            <div class="avatar-content">
                                                <i data-feather="calendar" class="avatar-icon font-medium-3"></i>
                                            </div>
                                        </div>
                                        <div class="media-body">
                                            <h6 class="mb-0">${startDate[0]}, ${startDate[1]} ${startDate[2]}, ${startDate[3]}</h6>
                                            <small>${startDate[4]} - ${endDate[4]}</small>
                                        </div>
                                    </div>
                                    <div class="media mt-2">
                                        <div class="avatar bg-light-primary rounded mr-1">
                                            <div class="avatar-content">
                                                <i data-feather="map-pin" class="avatar-icon font-medium-3"></i>
                                            </div>
                                        </div>
                                        <div class="media-body">
                                            <h6 class="mb-0">${data[0].location}</h6>
                                        </div>
                                    </div>`
                                    $("#appoitmentInfo").html(html)
                                    }
                                },
                                error: function (err) {
                                    console.log(err)
                                    alert("İşlem sırısında bir hata oluştu!");
                                }
                            })
                        }
                        allCalendarResult()

                        //$('#page1-content').text('You are on Page ' + page);
                        $('.pagination').find('li').addClass('page-item');
                        $('.pagination').find('a').addClass('page-link');
                    }
                });

            },
            error: function (err) {
                console.log(err)
                alert("Total page sırısında bir hata oluştu!");
            }
        })


    }
})(window, document, jQuery);



//------------------------------------------ Pagination Calendar Info - End ------------------------------------------//


