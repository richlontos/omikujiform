<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" type="text/css" href="/css/style.css">
    <title>Omikuji</title>
</head>
<body>
<div class="form-body">
    <div class="row">
        <div class="form-holder">
            <div class="form-content">
                <div class="form-items">
                    <h3>Send an Omikuji</h3>
                    <form class="requires-validation" action="/submit" method="post">
                        <div class="col-md-12">
                            <label>Pick a number from 5 to 25</label>
                            <select class="form-select mt-3" name="number">
                                <option selected disabled value="">0</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="3">4</option>
                                <option value="3">5</option>
                                <option value="3">......</option>
                            </select>
                        </div>

                        <div class="col-md-12">
                            <label>Enter the name of any city</label>
                            <input class="form-control" type="text" name="name" placeholder="city">
                        </div>

                        <div class="col-md-12">
                            <label>Enter the name of any real person</label>
                            <input class="form-control" type="text" name="real_person" placeholder="person" required>
                        </div>

                        <div class="col-md-12">
                            <label>Enter professional endeavor or hobby</label>
                            <input class="form-control" type="text" name="endeavor_hobby" placeholder="hobby" required>
                        </div>

                        <div class="col-md-12">
                            <label>Enter any type of living thing</label>
                            <input class="form-control" type="text" name="living_thing" placeholder="thing" required>
                        </div>


                        <div class="col-md-12">
                            <label>Say something nice to someone</label>
                            <textarea class="form-control" type="text" name="say_something" placeholder="something_nice"></textarea>
                        </div>

                        <div class="form-button mt-3">
                            <button id="submit" type="submit" class="btn btn-primary">send</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>