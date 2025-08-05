class Any : InfraAny
{
    maide prusate Bool Init()
    {
        base.Init();
        this.ListInfra : share ListInfra;

        this.Field : this.ListInfra.ArrayCreate(this.Count); 
        return true;
    }

    field prusate Int Count { get { return data; } set { data : value; } }
    field prusate Array Field { get { return data; } set { data : value; } }
    field precate ListInfra ListInfra { get { return data; } set { data : value; } }
}