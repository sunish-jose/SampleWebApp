<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link href="favicon.ico" rel="shortcut icon">
<title>BSG Financial Clearing Portal</title>
<%@include file="../headerResource.jsp"%>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
<script src="../js/jquery-ui.min.js"></script>

<script>
	$(document).ready(function() {
		
		$('#clientPopup').click(function() {
			$("#modalClientLists").modal('show');
		});

		$('#roamingPatPopup').click(function() {
			$("#modalRoamingPartnersLists").modal('show');
		});

		$('#trafficPopup').click(function() {
			$("#modalTrafficLists").modal('show');
		});
	});
</script>

<style type="text/css">
input[type="checkbox"] {
	display: none;
}

input[type="checkbox"] ~ label {
	color: blue;
	font-family: 'Trebuchet MS', 'Lucida Grande', 'Lucida Sans Unicode',
		'Lucida Sans', Tahoma, sans-serif;
}

input[type="checkbox"] ~ label:hover {
	cursor: pointer;
}

input[type="checkbox"]:checked ~ label {
	color: green;
	font-family: 'Trebuchet MS', 'Lucida Grande', 'Lucida Sans Unicode',
		'Lucida Sans', Tahoma, sans-serif;
}

input[type="checkbox"]:checked ~ label:hover {
	cursor: pointer;
}

.FixedHeightContainer {
	height: 600px;
	overflow-x: hidden;
	overflow-y: auto;
}

.Content {
	overflow-x: hidden;
	overflow-y: auto;
	background: #fff;
}
</style>
</head>

<body>
	<%@include file="../navbar.jsp"%>
	<div class="container">
		<ol class="breadcrumb">
			<li><a href="../user/home">Home</a></li>
			<li class="active">Transaction Details</li>
		</ol>
		<div class="blueBorderDiv">
			<div class="row bottomBorderDiv">
				<div class="col-md-12">
					<div id="clientTopDiv">
						<div class="cientTopLeft">
							<h4>
								<i class="fa fa-area-chart fa-lg"></i>&nbsp;&nbsp;Transaction Details
							</h4>
						</div>
					</div>
				</div>
			</div>

			<div class="row topPaddingLarge">
				<div class="col-md-12">
					<h4>
						<label for="bankName">Select the Clients</label>&nbsp;<i
							class="fa fa-plus-square searchPlus" id="clientPopup"></i>
					</h4>
				</div>
				<div class="col-md-12">
					<h4>
						<label for="bankName">Select the Roaming Partners</label>&nbsp;<i
							class="fa fa-plus-square searchPlus" id="roamingPatPopup"></i>
					</h4>
				</div>

				<div class="col-md-12">
					<h4>
						<label for="bankName">Select the Traffic Periods</label>&nbsp;<i
							class="fa fa-plus-square searchPlus" id="trafficPopup"></i>
					</h4>
				</div>

				<div class="col-md-6 topPaddingLarge bodypadding">
					<button type="button" id="txb1" class="btn btn-primary">
					Position Admin&nbsp;
					<span class="glyphicon glyphicon-new-window">&nbsp;</span>
					</button>
				</div>

			</div>
		</div>

		<div id="modalClientLists" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content modal-lg">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">
							<i class="fa fa-user fa-2x"></i>&nbsp; Select Clients
						</h4>
					</div>
					<!-- Modal header ends -->

					<div class="modal-body">
						<div class="FixedHeightContainer topPaddingLarge">
							<div class="Content">
								<div class="row">
									<div class="col-md-2">
										<div>
											<span><input type="checkbox" id="c1" class="chkhide"><label
												for="c1">Client 1</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c2" class="chkhide"><label
												for="c2">Client 2</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c3" class="chkhide"><label
												for="c3">Client 3</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c4" class="chkhide"><label
												for="c4">Client 4</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c5" class="chkhide"><label
												for="c5">Client 5</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c6" class="chkhide"><label
												for="c6">Client 6</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c7" class="chkhide"><label
												for="c7">Client 7</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c8" class="chkhide"><label
												for="c8">Client 8</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c9" class="chkhide"><label
												for="c9">Client 9</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c10" class="chkhide"><label
												for="c10">Client 10</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c11" class="chkhide"><label
												for="c11">Client 11</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c12" class="chkhide"><label
												for="c12">Client 12</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c13" class="chkhide"><label
												for="c13">Client 13</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c14" class="chkhide"><label
												for="c14">Client 14</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c15" class="chkhide"><label
												for="c15">Client 15</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c16" class="chkhide"><label
												for="c16">Client 16</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c17" class="chkhide"><label
												for="c17">Client 17</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c18" class="chkhide"><label
												for="c18">Client 18</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c19" class="chkhide"><label
												for="c19">Client 19</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c20" class="chkhide"><label
												for="c20">Client 20</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c21" class="chkhide"><label
												for="c21">Client 21</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c22" class="chkhide"><label
												for="c22">Client 22</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c23" class="chkhide"><label
												for="c23">Client 23</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c24" class="chkhide"><label
												for="c24">Client 24</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c25" class="chkhide"><label
												for="c25">Client 25</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c26" class="chkhide"><label
												for="c26">Client 26</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c27" class="chkhide"><label
												for="c27">Client 27</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c28" class="chkhide"><label
												for="c28">Client 28</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c29" class="chkhide"><label
												for="c29">Client 29</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c30" class="chkhide"><label
												for="c30">Client 30</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c31" class="chkhide"><label
												for="c31">Client 31</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c32" class="chkhide"><label
												for="c32">Client 32</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c33" class="chkhide"><label
												for="c33">Client 33</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c34" class="chkhide"><label
												for="c34">Client 34</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c35" class="chkhide"><label
												for="c35">Client 35</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c36" class="chkhide"><label
												for="c36">Client 36</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c37" class="chkhide"><label
												for="c37">Client 37</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c38" class="chkhide"><label
												for="c38">Client 38</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c39" class="chkhide"><label
												for="c39">Client 39</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c40" class="chkhide"><label
												for="c40">Client 40</label></span>
										</div>
									</div>
									<div class="col-md-2">
										<div>
											<span><input type="checkbox" id="c41" class="chkhide"><label
												for="c41">Client 41</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c42" class="chkhide"><label
												for="c42">Client 42</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c43" class="chkhide"><label
												for="c43">Client 43</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c44" class="chkhide"><label
												for="c44">Client 44</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c45" class="chkhide"><label
												for="c45">Client 45</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c46" class="chkhide"><label
												for="c46">Client 46</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c47" class="chkhide"><label
												for="c47">Client 47</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c48" class="chkhide"><label
												for="c48">Client 48</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c49" class="chkhide"><label
												for="c49">Client 49</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c50" class="chkhide"><label
												for="c50">Client 50</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c51" class="chkhide"><label
												for="c51">Client 51</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c52" class="chkhide"><label
												for="c52">Client 52</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c53" class="chkhide"><label
												for="c53">Client 53</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c54" class="chkhide"><label
												for="c54">Client 54</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c55" class="chkhide"><label
												for="c55">Client 55</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c56" class="chkhide"><label
												for="c56">Client 56</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c57" class="chkhide"><label
												for="c57">Client 57</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c58" class="chkhide"><label
												for="c58">Client 58</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c59" class="chkhide"><label
												for="c59">Client 59</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c60" class="chkhide"><label
												for="c60">Client 60</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c61" class="chkhide"><label
												for="c61">Client 61</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c62" class="chkhide"><label
												for="c62">Client 62</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c63" class="chkhide"><label
												for="c63">Client 63</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c64" class="chkhide"><label
												for="c64">Client 64</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c65" class="chkhide"><label
												for="c65">Client 65</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c66" class="chkhide"><label
												for="c66">Client 66</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c67" class="chkhide"><label
												for="c67">Client 67</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c68" class="chkhide"><label
												for="c68">Client 68</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c69" class="chkhide"><label
												for="c69">Client 69</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c70" class="chkhide"><label
												for="c70">Client 70</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c71" class="chkhide"><label
												for="c71">Client 71</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c72" class="chkhide"><label
												for="c72">Client 72</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c73" class="chkhide"><label
												for="c73">Client 73</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c74" class="chkhide"><label
												for="c74">Client 74</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c75" class="chkhide"><label
												for="c75">Client 75</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c76" class="chkhide"><label
												for="c76">Client 76</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c77" class="chkhide"><label
												for="c77">Client 77</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c78" class="chkhide"><label
												for="c78">Client 78</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c79" class="chkhide"><label
												for="c79">Client 79</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c80" class="chkhide"><label
												for="c80">Client 80</label></span>
										</div>
									</div>
									<div class="col-md-2">
										<div>
											<span><input type="checkbox" id="c81" class="chkhide"><label
												for="c81">Client 81</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c82" class="chkhide"><label
												for="c82">Client 82</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c83" class="chkhide"><label
												for="c83">Client 83</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c84" class="chkhide"><label
												for="c84">Client 84</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c85" class="chkhide"><label
												for="c85">Client 85</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c86" class="chkhide"><label
												for="c86">Client 86</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c87" class="chkhide"><label
												for="c87">Client 87</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c88" class="chkhide"><label
												for="c88">Client 88</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c89" class="chkhide"><label
												for="c89">Client 89</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c90" class="chkhide"><label
												for="c90">Client 90</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c91" class="chkhide"><label
												for="c91">Client 91</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c92" class="chkhide"><label
												for="c92">Client 92</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c93" class="chkhide"><label
												for="c93">Client 93</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c94" class="chkhide"><label
												for="c94">Client 94</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c95" class="chkhide"><label
												for="c95">Client 95</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c96" class="chkhide"><label
												for="c96">Client 96</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c97" class="chkhide"><label
												for="c97">Client 97</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c98" class="chkhide"><label
												for="c98">Client 98</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c99" class="chkhide"><label
												for="c99">Client 99</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c100" class="chkhide"><label
												for="c100">Client 100</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c101" class="chkhide"><label
												for="c101">Client 101</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c102" class="chkhide"><label
												for="c102">Client 102</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c103" class="chkhide"><label
												for="c103">Client 103</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c104" class="chkhide"><label
												for="c104">Client 104</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c105" class="chkhide"><label
												for="c105">Client 105</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c106" class="chkhide"><label
												for="c106">Client 106</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c107" class="chkhide"><label
												for="c107">Client 107</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c108" class="chkhide"><label
												for="c108">Client 108</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c109" class="chkhide"><label
												for="c109">Client 109</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c110" class="chkhide"><label
												for="c110">Client 110</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c111" class="chkhide"><label
												for="c111">Client 111</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c112" class="chkhide"><label
												for="c112">Client 112</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c113" class="chkhide"><label
												for="c113">Client 113</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c114" class="chkhide"><label
												for="c114">Client 114</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c115" class="chkhide"><label
												for="c115">Client 115</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c116" class="chkhide"><label
												for="c116">Client 116</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c117" class="chkhide"><label
												for="c117">Client 117</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c118" class="chkhide"><label
												for="c118">Client 118</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c119" class="chkhide"><label
												for="c119">Client 119</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c120" class="chkhide"><label
												for="c120">Client 120</label></span>
										</div>
									</div>
									<div class="col-md-2">
										<div>
											<span><input type="checkbox" id="c121" class="chkhide"><label
												for="c121">Client 121</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c122" class="chkhide"><label
												for="c122">Client 122</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c123" class="chkhide"><label
												for="c123">Client 123</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c124" class="chkhide"><label
												for="c124">Client 124</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c125" class="chkhide"><label
												for="c125">Client 125</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c126" class="chkhide"><label
												for="c126">Client 126</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c127" class="chkhide"><label
												for="c127">Client 127</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c128" class="chkhide"><label
												for="c128">Client 128</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c129" class="chkhide"><label
												for="c129">Client 129</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c30" class="chkhide"><label
												for="c130">Client 130</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c131" class="chkhide"><label
												for="c131">Client 131</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c132" class="chkhide"><label
												for="c132">Client 132</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c133" class="chkhide"><label
												for="c133">Client 133</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c134" class="chkhide"><label
												for="c134">Client 134</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c135" class="chkhide"><label
												for="c135">Client 135</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c136" class="chkhide"><label
												for="c136">Client 136</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c137" class="chkhide"><label
												for="c137">Client 137</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c138" class="chkhide"><label
												for="c138">Client 138</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c139" class="chkhide"><label
												for="c139">Client 139</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c140" class="chkhide"><label
												for="c140">Client 140</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c141" class="chkhide"><label
												for="c141">Client 141</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c142" class="chkhide"><label
												for="c142">Client 142</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c143" class="chkhide"><label
												for="c143">Client 143</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c144" class="chkhide"><label
												for="c144">Client 144</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c145" class="chkhide"><label
												for="c145">Client 145</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c146" class="chkhide"><label
												for="c146">Client 146</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c147" class="chkhide"><label
												for="c147">Client 147</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c148" class="chkhide"><label
												for="c148">Client 148</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c149" class="chkhide"><label
												for="c149">Client 149</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c150" class="chkhide"><label
												for="c150">Client 150</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c151" class="chkhide"><label
												for="c151">Client 151</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c152" class="chkhide"><label
												for="c152">Client 152</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c153" class="chkhide"><label
												for="c153">Client 153</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c154" class="chkhide"><label
												for="c154">Client 154</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c155" class="chkhide"><label
												for="c155">Client 155</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c156" class="chkhide"><label
												for="c156">Client 156</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c157" class="chkhide"><label
												for="c157">Client 157</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c158" class="chkhide"><label
												for="c158">Client 158</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c159" class="chkhide"><label
												for="c159">Client 159</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c160" class="chkhide"><label
												for="c160">Client 160</label></span>
										</div>
									</div>
									<div class="col-md-2">
										<div>
											<span><input type="checkbox" id="c161" class="chkhide"><label
												for="c161">Client 161</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c162" class="chkhide"><label
												for="c162">Client 162</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c163" class="chkhide"><label
												for="c163">Client 163</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c164" class="chkhide"><label
												for="c164">Client 164</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c165" class="chkhide"><label
												for="c165">Client 165</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c166" class="chkhide"><label
												for="c166">Client 166</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c167" class="chkhide"><label
												for="c167">Client 167</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c168" class="chkhide"><label
												for="c168">Client 168</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c169" class="chkhide"><label
												for="c169">Client 169</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c170" class="chkhide"><label
												for="c170">Client 170</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c171" class="chkhide"><label
												for="c171">Client 171</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c172" class="chkhide"><label
												for="c172">Client 172</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c173" class="chkhide"><label
												for="c173">Client 173</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c174" class="chkhide"><label
												for="c174">Client 174</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c175" class="chkhide"><label
												for="c175">Client 175</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c176" class="chkhide"><label
												for="c176">Client 176</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c177" class="chkhide"><label
												for="c177">Client 177</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c178" class="chkhide"><label
												for="c178">Client 178</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c179" class="chkhide"><label
												for="c179">Client 179</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c180" class="chkhide"><label
												for="c180">Client 180</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c181" class="chkhide"><label
												for="c181">Client 181</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c182" class="chkhide"><label
												for="c182">Client 182</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c183" class="chkhide"><label
												for="c183">Client 183</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c184" class="chkhide"><label
												for="c184">Client 184</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c185" class="chkhide"><label
												for="c185">Client 185</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c186" class="chkhide"><label
												for="c186">Client 186</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c187" class="chkhide"><label
												for="c187">Client 187</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c188" class="chkhide"><label
												for="c188">Client 188</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c189" class="chkhide"><label
												for="c189">Client 189</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c190" class="chkhide"><label
												for="c190">Client 190</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c191" class="chkhide"><label
												for="c191">Client 191</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c192" class="chkhide"><label
												for="c192">Client 192</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c193" class="chkhide"><label
												for="c193">Client 193</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c194" class="chkhide"><label
												for="c194">Client 194</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c195" class="chkhide"><label
												for="c195">Client 195</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c196" class="chkhide"><label
												for="c196">Client 196</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c197" class="chkhide"><label
												for="c197">Client 197</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c198" class="chkhide"><label
												for="c198">Client 198</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c199" class="chkhide"><label
												for="c199">Client 199</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="c200" class="chkhide"><label
												for="c200">Client 200</label></span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" id="clientNext"
							data-dismiss="modal">Next</button>
					</div>
				</div>
			</div>
		</div>

		<div id="modalTrafficLists" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content modal-lg">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">
							<i class="fa fa-users fa-2x"></i>&nbsp; Select Traffic Periods								
						</h4>
					</div>
					<!--  Modal header -->
					<div class="modal-body">
						<div class="FixedHeightContainer topPaddingLarge">
							<div class="Content">
								<div class="row">
									<div class="col-md-2">
										<div>
											<span><input type="checkbox" id="tp1" class="chkhide"><label for="tp1">01/2014</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="tp2" class="chkhide"><label for="tp2">02/2014</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="tp3" class="chkhide"><label for="tp3">03/2014</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="tp4" class="chkhide"><label for="tp4">04/2014</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="tp5" class="chkhide"><label for="tp5">05/2014</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="tp6" class="chkhide"><label for="tp6">06/2014</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="tp7" class="chkhide"><label for="tp7">07/2014</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="tp8" class="chkhide"><label for="tp8">08/2014</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="tp9" class="chkhide"><label for="tp9">09/2014</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="tp10" class="chkhide"><label for="tp10">10/2014</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="tp11" class="chkhide"><label for="tp11">11/2014</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="tp12" class="chkhide"><label for="tp12">12/2014</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="tp13" class="chkhide"><label for="tp13">01/2015</label></span>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" id="trafficBack">Back</button>
						<button type="button" class="btn btn-primary" id="trafficNext">Next</button>
					</div>
				</div>
			</div>
		</div>

		<div id="modalRoamingPartnersLists" class="modal fade">
			<div class="modal-dialog">
				<div class="modal-content modal-lg">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">&times;</button>
						<h4 class="modal-title">
							<i class="fa fa-users fa-2x"></i>&nbsp; Select Roaming Partners
						</h4>
					</div>
					<!-- Modal header -->
					<div class="modal-body">
						<div class="FixedHeightContainer topPaddingLarge">
							<div class="Content">
								<div class="row">
									<div class="col-md-2">
										<div>
											<span><input type="checkbox" id="rm1" class="chkhide"><label
												for="rm1">Partner 1</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm2" class="chkhide"><label
												for="rm2">Partner 2</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm3" class="chkhide"><label
												for="rm3">Partner 3</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm4" class="chkhide"><label
												for="rm4">Partner 4</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm5" class="chkhide"><label
												for="rm5">Partner 5</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm6" class="chkhide"><label
												for="rm6">Partner 6</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm7" class="chkhide"><label
												for="rm7">Partner 7</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm8" class="chkhide"><label
												for="rm8">Partner 8</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm9" class="chkhide"><label
												for="rm9">Partner 9</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm10" class="chkhide"><label
												for="rm10">Partner 10</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm11" class="chkhide"><label
												for="rm11">Partner 11</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm12" class="chkhide"><label
												for="rm12">Partner 12</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm13" class="chkhide"><label
												for="rm13">Partner 13</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm14" class="chkhide"><label
												for="rm14">Partner 14</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm15" class="chkhide"><label
												for="rm15">Partner 15</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm16" class="chkhide"><label
												for="rm16">Partner 16</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm17" class="chkhide"><label
												for="rm17">Partner 17</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm18" class="chkhide"><label
												for="rm18">Partner 18</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm19" class="chkhide"><label
												for="rm19">Partner 19</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm20" class="chkhide"><label
												for="rm20">Partner 20</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm21" class="chkhide"><label
												for="rm21">Partner 21</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm22" class="chkhide"><label
												for="rm22">Partner 22</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm23" class="chkhide"><label
												for="rm23">Partner 23</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm24" class="chkhide"><label
												for="rm24">Partner 24</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm25" class="chkhide"><label
												for="rm25">Partner 25</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm26" class="chkhide"><label
												for="rm26">Partner 26</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm27" class="chkhide"><label
												for="rm27">Partner 27</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm28" class="chkhide"><label
												for="rm28">Partner 28</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm29" class="chkhide"><label
												for="rm29">Partner 29</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm30" class="chkhide"><label
												for="rm30">Partner 30</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm31" class="chkhide"><label
												for="rm31">Partner 31</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm32" class="chkhide"><label
												for="rm32">Partner 32</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm33" class="chkhide"><label
												for="rm33">Partner 33</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm34" class="chkhide"><label
												for="rm34">Partner 34</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm35" class="chkhide"><label
												for="rm35">Partner 35</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm36" class="chkhide"><label
												for="rm36">Partner 36</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm37" class="chkhide"><label
												for="rm37">Partner 37</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm38" class="chkhide"><label
												for="rm38">Partner 38</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm39" class="chkhide"><label
												for="rm39">Partner 39</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm40" class="chkhide"><label
												for="rm40">Partner 40</label></span>
										</div>
									</div>
									<div class="col-md-2">
										<div>
											<span><input type="checkbox" id="rm41" class="chkhide"><label
												for="rm41">Partner 41</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm42" class="chkhide"><label
												for="rm42">Partner 42</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm43" class="chkhide"><label
												for="rm43">Partner 43</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm44" class="chkhide"><label
												for="rm44">Partner 44</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm45" class="chkhide"><label
												for="rm45">Partner 45</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm46" class="chkhide"><label
												for="rm46">Partner 46</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm47" class="chkhide"><label
												for="rm47">Partner 47</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm48" class="chkhide"><label
												for="rm48">Partner 48</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm49" class="chkhide"><label
												for="rm49">Partner 49</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm50" class="chkhide"><label
												for="rm50">Partner 50</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm51" class="chkhide"><label
												for="rm51">Partner 51</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm52" class="chkhide"><label
												for="rm52">Partner 52</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm53" class="chkhide"><label
												for="rm53">Partner 53</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm54" class="chkhide"><label
												for="rm54">Partner 54</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm55" class="chkhide"><label
												for="rm55">Partner 55</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm56" class="chkhide"><label
												for="rm56">Partner 56</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm57" class="chkhide"><label
												for="rm57">Partner 57</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm58" class="chkhide"><label
												for="rm58">Partner 58</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm59" class="chkhide"><label
												for="rm59">Partner 59</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm60" class="chkhide"><label
												for="rm60">Partner 60</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm61" class="chkhide"><label
												for="rm61">Partner 61</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm62" class="chkhide"><label
												for="rm62">Partner 62</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm63" class="chkhide"><label
												for="rm63">Partner 63</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm64" class="chkhide"><label
												for="rm64">Partner 64</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm65" class="chkhide"><label
												for="rm65">Partner 65</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm66" class="chkhide"><label
												for="rm66">Partner 66</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm67" class="chkhide"><label
												for="rm67">Partner 67</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm68" class="chkhide"><label
												for="rm68">Partner 68</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm69" class="chkhide"><label
												for="rm69">Partner 69</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm70" class="chkhide"><label
												for="rm70">Partner 70</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm71" class="chkhide"><label
												for="rm71">Partner 71</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm72" class="chkhide"><label
												for="rm72">Partner 72</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm73" class="chkhide"><label
												for="rm73">Partner 73</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm74" class="chkhide"><label
												for="rm74">Partner 74</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm75" class="chkhide"><label
												for="rm75">Partner 75</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm76" class="chkhide"><label
												for="rm76">Partner 76</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm77" class="chkhide"><label
												for="rm77">Partner 77</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm78" class="chkhide"><label
												for="rm78">Partner 78</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm79" class="chkhide"><label
												for="rm79">Partner 79</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm80" class="chkhide"><label
												for="rm80">Partner 80</label></span>
										</div>
									</div>
									<div class="col-md-2">
										<div>
											<span><input type="checkbox" id="rm81" class="chkhide"><label
												for="rm81">Partner 81</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm82" class="chkhide"><label
												for="rm82">Partner 82</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm83" class="chkhide"><label
												for="rm83">Partner 83</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm84" class="chkhide"><label
												for="rm84">Partner 84</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm85" class="chkhide"><label
												for="rm85">Partner 85</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm86" class="chkhide"><label
												for="rm86">Partner 86</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm87" class="chkhide"><label
												for="rm87">Partner 87</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm88" class="chkhide"><label
												for="rm88">Partner 88</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm89" class="chkhide"><label
												for="rm89">Partner 89</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm90" class="chkhide"><label
												for="rm90">Partner 90</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm91" class="chkhide"><label
												for="rm91">Partner 91</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm92" class="chkhide"><label
												for="rm92">Partner 92</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm93" class="chkhide"><label
												for="rm93">Partner 93</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm94" class="chkhide"><label
												for="rm94">Partner 94</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm95" class="chkhide"><label
												for="rm95">Partner 95</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm96" class="chkhide"><label
												for="rm96">Partner 96</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm97" class="chkhide"><label
												for="rm97">Partner 97</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm98" class="chkhide"><label
												for="rm98">Partner 98</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm99" class="chkhide"><label
												for="rm99">Partner 99</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm100"
												class="chkhide"><label for="rm100">Partner
													100</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm101"
												class="chkhide"><label for="rm101">Partner
													101</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm102"
												class="chkhide"><label for="rm102">Partner
													102</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm103"
												class="chkhide"><label for="rm103">Partner
													103</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm104"
												class="chkhide"><label for="rm104">Partner
													104</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm105"
												class="chkhide"><label for="rm105">Partner
													105</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm106"
												class="chkhide"><label for="rm106">Partner
													106</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm107"
												class="chkhide"><label for="rm107">Partner
													107</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm108"
												class="chkhide"><label for="rm108">Partner
													108</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm109"
												class="chkhide"><label for="rm109">Partner
													109</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm110"
												class="chkhide"><label for="rm110">Partner
													110</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm111"
												class="chkhide"><label for="rm111">Partner
													111</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm112"
												class="chkhide"><label for="rm112">Partner
													112</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm113"
												class="chkhide"><label for="rm113">Partner
													113</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm114"
												class="chkhide"><label for="rm114">Partner
													114</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm115"
												class="chkhide"><label for="rm115">Partner
													115</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm116"
												class="chkhide"><label for="rm116">Partner
													116</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm117"
												class="chkhide"><label for="rm117">Partner
													117</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm118"
												class="chkhide"><label for="rm118">Partner
													118</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm119"
												class="chkhide"><label for="rm119">Partner
													119</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm120"
												class="chkhide"><label for="rm120">Partner
													120</label></span>
										</div>
									</div>
									<div class="col-md-2">
										<div>
											<span><input type="checkbox" id="rm121"
												class="chkhide"><label for="rm121">Partner
													121</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm122"
												class="chkhide"><label for="rm122">Partner
													122</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm123"
												class="chkhide"><label for="rm123">Partner
													123</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm124"
												class="chkhide"><label for="rm124">Partner
													124</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm125"
												class="chkhide"><label for="rm125">Partner
													125</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm126"
												class="chkhide"><label for="rm126">Partner
													126</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm127"
												class="chkhide"><label for="rm127">Partner
													127</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm128"
												class="chkhide"><label for="rm128">Partner
													128</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm129"
												class="chkhide"><label for="rm129">Partner
													129</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm30" class="chkhide"><label
												for="rm130">Partner 130</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm131"
												class="chkhide"><label for="rm131">Partner
													131</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm132"
												class="chkhide"><label for="rm132">Partner
													132</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm133"
												class="chkhide"><label for="rm133">Partner
													133</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm134"
												class="chkhide"><label for="rm134">Partner
													134</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm135"
												class="chkhide"><label for="rm135">Partner
													135</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm136"
												class="chkhide"><label for="rm136">Partner
													136</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm137"
												class="chkhide"><label for="rm137">Partner
													137</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm138"
												class="chkhide"><label for="rm138">Partner
													138</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm139"
												class="chkhide"><label for="rm139">Partner
													139</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm140"
												class="chkhide"><label for="rm140">Partner
													140</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm141"
												class="chkhide"><label for="rm141">Partner
													141</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm142"
												class="chkhide"><label for="rm142">Partner
													142</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm143"
												class="chkhide"><label for="rm143">Partner
													143</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm144"
												class="chkhide"><label for="rm144">Partner
													144</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm145"
												class="chkhide"><label for="rm145">Partner
													145</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm146"
												class="chkhide"><label for="rm146">Partner
													146</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm147"
												class="chkhide"><label for="rm147">Partner
													147</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm148"
												class="chkhide"><label for="rm148">Partner
													148</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm149"
												class="chkhide"><label for="rm149">Partner
													149</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm150"
												class="chkhide"><label for="rm150">Partner
													150</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm151"
												class="chkhide"><label for="rm151">Partner
													151</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm152"
												class="chkhide"><label for="rm152">Partner
													152</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm153"
												class="chkhide"><label for="rm153">Partner
													153</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm154"
												class="chkhide"><label for="rm154">Partner
													154</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm155"
												class="chkhide"><label for="rm155">Partner
													155</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm156"
												class="chkhide"><label for="rm156">Partner
													156</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm157"
												class="chkhide"><label for="rm157">Partner
													157</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm158"
												class="chkhide"><label for="rm158">Partner
													158</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm159"
												class="chkhide"><label for="rm159">Partner
													159</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm160"
												class="chkhide"><label for="rm160">Partner
													160</label></span>
										</div>
									</div>
									<div class="col-md-2">
										<div>
											<span><input type="checkbox" id="rm161"
												class="chkhide"><label for="rm161">Partner
													161</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm162"
												class="chkhide"><label for="rm162">Partner
													162</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm163"
												class="chkhide"><label for="rm163">Partner
													163</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm164"
												class="chkhide"><label for="rm164">Partner
													164</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm165"
												class="chkhide"><label for="rm165">Partner
													165</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm166"
												class="chkhide"><label for="rm166">Partner
													166</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm167"
												class="chkhide"><label for="rm167">Partner
													167</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm168"
												class="chkhide"><label for="rm168">Partner
													168</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm169"
												class="chkhide"><label for="rm169">Partner
													169</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm170"
												class="chkhide"><label for="rm170">Partner
													170</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm171"
												class="chkhide"><label for="rm171">Partner
													171</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm172"
												class="chkhide"><label for="rm172">Partner
													172</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm173"
												class="chkhide"><label for="rm173">Partner
													173</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm174"
												class="chkhide"><label for="rm174">Partner
													174</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm175"
												class="chkhide"><label for="rm175">Partner
													175</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm176"
												class="chkhide"><label for="rm176">Partner
													176</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm177"
												class="chkhide"><label for="rm177">Partner
													177</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm178"
												class="chkhide"><label for="rm178">Partner
													178</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm179"
												class="chkhide"><label for="rm179">Partner
													179</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm180"
												class="chkhide"><label for="rm180">Partner
													180</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm181"
												class="chkhide"><label for="rm181">Partner
													181</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm182"
												class="chkhide"><label for="rm182">Partner
													182</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm183"
												class="chkhide"><label for="rm183">Partner
													183</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm184"
												class="chkhide"><label for="rm184">Partner
													184</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm185"
												class="chkhide"><label for="rm185">Partner
													185</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm186"
												class="chkhide"><label for="rm186">Partner
													186</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm187"
												class="chkhide"><label for="rm187">Partner
													187</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm188"
												class="chkhide"><label for="rm188">Partner
													188</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm189"
												class="chkhide"><label for="rm189">Partner
													189</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm180"
												class="chkhide"><label for="rm190">Partner
													190</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm181"
												class="chkhide"><label for="rm191">Partner
													191</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm182"
												class="chkhide"><label for="rm192">Partner
													192</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm183"
												class="chkhide"><label for="rm193">Partner
													193</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm184"
												class="chkhide"><label for="rm194">Partner
													194</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm185"
												class="chkhide"><label for="rm195">Partner
													195</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm186"
												class="chkhide"><label for="rm196">Partner
													196</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm187"
												class="chkhide"><label for="rm197">Partner
													197</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm188"
												class="chkhide"><label for="rm198">Partner
													198</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm189"
												class="chkhide"><label for="rm199">Partner
													199</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm200"
												class="chkhide"><label for="rm200">Partner
													200</label></span>
										</div>
									</div>
									<div class="col-md-2">
										<div>
											<span><input type="checkbox" id="rm201"
												class="chkhide"><label for="rm201">Partner
													201</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm202"
												class="chkhide"><label for="rm202">Partner
													202</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm203"
												class="chkhide"><label for="rm203">Partner
													203</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm204"
												class="chkhide"><label for="rm204">Partner
													204</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm205"
												class="chkhide"><label for="rm205">Partner
													205</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm206"
												class="chkhide"><label for="rm206">Partner
													206</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm207"
												class="chkhide"><label for="rm207">Partner
													207</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm208"
												class="chkhide"><label for="rm208">Partner
													208</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm209"
												class="chkhide"><label for="rm209">Partner
													209</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm210"
												class="chkhide"><label for="rm210">Partner
													210</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm211"
												class="chkhide"><label for="rm211">Partner
													211</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm212"
												class="chkhide"><label for="rm212">Partner
													212</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm213"
												class="chkhide"><label for="rm213">Partner
													213</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm214"
												class="chkhide"><label for="rm214">Partner
													214</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm215"
												class="chkhide"><label for="rm215">Partner
													215</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm216"
												class="chkhide"><label for="rm216">Partner
													216</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm217"
												class="chkhide"><label for="rm217">Partner
													217</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm218"
												class="chkhide"><label for="rm218">Partner
													218</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm219"
												class="chkhide"><label for="rm219">Partner
													219</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm220"
												class="chkhide"><label for="rm220">Partner
													220</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm221"
												class="chkhide"><label for="rm221">Partner
													221</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm222"
												class="chkhide"><label for="rm222">Partner
													222</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm223"
												class="chkhide"><label for="rm223">Partner
													223</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm224"
												class="chkhide"><label for="rm224">Partner
													224</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm225"
												class="chkhide"><label for="rm225">Partner
													225</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm226"
												class="chkhide"><label for="rm226">Partner
													226</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm227"
												class="chkhide"><label for="rm227">Partner
													227</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm228"
												class="chkhide"><label for="rm228">Partner
													228</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm229"
												class="chkhide"><label for="rm229">Partner
													229</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm230"
												class="chkhide"><label for="rm230">Partner
													230</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm231"
												class="chkhide"><label for="rm231">Partner
													231</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm232"
												class="chkhide"><label for="rm232">Partner
													232</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm233"
												class="chkhide"><label for="rm233">Partner
													233</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm234"
												class="chkhide"><label for="rm234">Partner
													234</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm235"
												class="chkhide"><label for="rm235">Partner
													235</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm236"
												class="chkhide"><label for="rm236">Partner
													236</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm237"
												class="chkhide"><label for="rm237">Partner
													237</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm238"
												class="chkhide"><label for="rm238">Partner
													238</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm239"
												class="chkhide"><label for="rm239">Partner
													239</label></span>
										</div>
										<div>
											<span><input type="checkbox" id="rm240"
												class="chkhide"><label for="rm240">Partner
													240</label></span>
										</div>
									</div>
								</div>
							</div>
						</div>

					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
						<button type="button" class="btn btn-primary" id="roamPartnerBack">Back</button>
						<button type="button" class="btn btn-primary" id="roamPartnerNext">Next</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="../footer.jsp"%>
</body>
</html>