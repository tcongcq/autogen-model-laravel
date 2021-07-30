module.exports = {
    template: "<?php\n\
namespace App\\Admin;\n\
\n\
use Illuminate\\Database\\Eloquent\\Model;\n\
\n\
class {{modelName}} extends Model\n\
{\n\
    protected $fillable = [\n\
{{#fillAbles}}        '{{fillAble}}',\n{{/fillAbles}}\
    ];\n\
    public $rules       = [\n\
{{#rules}}        '{{rule}}' => '{{valid}}',\n{{/rules}}\n\
    ];\n\
\n\
    public $timestamps = true;\n\
}"
}