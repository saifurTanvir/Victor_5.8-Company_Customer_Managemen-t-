<label>Name</label>
<div class="form-group" >
    <input type="text" name="name" value="{{old('name') ?? $customer->name}}" class="form-control">
    <div class="text-danger">{{$errors->first('name')}}</div>
</div>

<label>Email</label>
<div class="form-group">
    <input type="email" name="email" value="{{old('email') ?? $customer->email}}" class="form-control">
    <div class="text-danger">{{$errors->first('email')}}</div>
</div>

<div class="form-group">
    <label>Status</label>
    <select class="form-control" name="active" id="active">
        <option value="" disabled>Select Option</option>
        @foreach($customer->activeOptions() as $activeOptionKey => $activeOptionValue )
            <option value="{{ $activeOptionKey }}" {{$customer->active == $activeOptionValue ? 'selected' : ''}}>{{$activeOptionValue}}</option>
        @endforeach

    </select>
    <div class="text-danger">{{$errors->first('active')}}</div>
</div>

<div class="form-group">
    <label>Company</label>
    <select class="form-control" name="company_id" id="company_id">
        <option value="" disabled>Select Company</option>
        @foreach($companies as $company)
            <option value="{{$company->id}}" {{$company->id == $customer->company_id ? 'selected' : ''}}>{{$company->name}}</option>
        @endforeach
    </select>
    <div class="text-danger">{{$errors->first('company')}}</div>
</div>

<div class="form-group d-flex flex-column">
    <label for="image">Profile Image</label>
    <input type="file" name="image" class="py-2">
    <div class="text-danger">{{$errors->first('image')}}</div>
</div>

@csrf
