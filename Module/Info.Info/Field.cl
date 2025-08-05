class Field : Any
{
    field prusate String Name { get { return data; } set { data : value; } }
    field prusate Any Value { get { return data; } set { data : value; } }

    maide prusate Any Get()
    {
        return this.Value;
    }

    maide prusate Bool Set(var Any value)
    {
        this.Value : value;
        return true;
    }
}