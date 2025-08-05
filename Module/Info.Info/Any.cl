class Any : InfraAny
{
    maide prusate Bool Init()
    {
        base.Init();
        this.ListInfra : share ListInfra;

        this.InitField();
        return true;
    }

    maide precate Bool InitField()
    {
        this.InitFieldStart();
        this.InitFieldItem();
        this.InitFieldEnd();
        return true;
    }

    maide precate Bool InitFieldItem()
    {
    }

    maide precate Bool InitFieldStart()
    {
        this.InitFieldList : new List;
        this.InitFieldList.Init();
        return true;
    }

    maide precate Bool InitFieldAdd(var Field item)
    {
        this.InitFieldList.Add(item);
        return true;
    }

    maide precate Bool InitFieldEnd()
    {
        this.Field : this.ListInfra.ArrayCreateList(this.InitFieldList);
        this.InitFieldList : null;
        return true;
    }

    field prusate Array Field { get { return data; } set { data : value; } }
    field precate ListInfra ListInfra { get { return data; } set { data : value; } }
    field precate List InitFieldList { get { return data; } set { data : value; } }
}