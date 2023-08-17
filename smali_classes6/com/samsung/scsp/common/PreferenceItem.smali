.class public Lcom/samsung/scsp/common/PreferenceItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/scsp/framework/core/common/Supplier;
.implements Lcom/samsung/scsp/framework/core/common/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/samsung/scsp/framework/core/common/Supplier<",
        "TT;>;",
        "Lcom/samsung/scsp/framework/core/common/Consumer<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final SETTERS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/samsung/scsp/framework/core/common/BiConsumer<",
            "Lcom/samsung/scsp/common/PreferenceItem<",
            "*>;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;

.field private final preferences:Lcom/samsung/scsp/common/Preferences;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/scsp/common/PreferenceItem;->SETTERS:Ljava/util/Map;

    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/samsung/scsp/common/h;->a:Lcom/samsung/scsp/common/h;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/samsung/scsp/common/l;->a:Lcom/samsung/scsp/common/l;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/samsung/scsp/common/i;->a:Lcom/samsung/scsp/common/i;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/samsung/scsp/common/k;->a:Lcom/samsung/scsp/common/k;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/samsung/scsp/common/g;->a:Lcom/samsung/scsp/common/g;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-class v1, Ljava/util/Set;

    sget-object v2, Lcom/samsung/scsp/common/j;->a:Lcom/samsung/scsp/common/j;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/scsp/common/Preferences;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/scsp/common/Preferences;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/scsp/common/PreferenceItem;->preferences:Lcom/samsung/scsp/common/Preferences;

    iput-object p2, p0, Lcom/samsung/scsp/common/PreferenceItem;->name:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/scsp/common/PreferenceItem;->defaultValue:Ljava/lang/Object;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/scsp/common/PreferenceItem;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0}, Lcom/samsung/scsp/common/PreferenceItem;->lambda$get$6()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/samsung/scsp/common/PreferenceItem;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/scsp/common/PreferenceItem;->lambda$static$4(Lcom/samsung/scsp/common/PreferenceItem;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic c(Lcom/samsung/scsp/common/PreferenceItem;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/scsp/common/PreferenceItem;->lambda$static$0(Lcom/samsung/scsp/common/PreferenceItem;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic d(Lcom/samsung/scsp/common/PreferenceItem;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/scsp/common/PreferenceItem;->lambda$static$2(Lcom/samsung/scsp/common/PreferenceItem;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic e(Lcom/samsung/scsp/common/PreferenceItem;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/scsp/common/PreferenceItem;->lambda$static$5(Lcom/samsung/scsp/common/PreferenceItem;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic f(Lcom/samsung/scsp/common/PreferenceItem;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/scsp/common/PreferenceItem;->lambda$static$3(Lcom/samsung/scsp/common/PreferenceItem;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic g(Lcom/samsung/scsp/common/PreferenceItem;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/scsp/common/PreferenceItem;->lambda$static$1(Lcom/samsung/scsp/common/PreferenceItem;Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$get$6()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/common/PreferenceItem;->preferences:Lcom/samsung/scsp/common/Preferences;

    iget-object v0, v0, Lcom/samsung/scsp/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/scsp/common/PreferenceItem;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/scsp/common/PreferenceItem;->defaultValue:Ljava/lang/Object;

    return-object v0
.end method

.method private static synthetic lambda$static$0(Lcom/samsung/scsp/common/PreferenceItem;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/common/PreferenceItem;->preferences:Lcom/samsung/scsp/common/Preferences;

    iget-object v0, v0, Lcom/samsung/scsp/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/scsp/common/PreferenceItem;->name:Ljava/lang/String;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static synthetic lambda$static$1(Lcom/samsung/scsp/common/PreferenceItem;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/common/PreferenceItem;->preferences:Lcom/samsung/scsp/common/Preferences;

    iget-object v0, v0, Lcom/samsung/scsp/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/scsp/common/PreferenceItem;->name:Ljava/lang/String;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static synthetic lambda$static$2(Lcom/samsung/scsp/common/PreferenceItem;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/common/PreferenceItem;->preferences:Lcom/samsung/scsp/common/Preferences;

    iget-object v0, v0, Lcom/samsung/scsp/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/scsp/common/PreferenceItem;->name:Ljava/lang/String;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static synthetic lambda$static$3(Lcom/samsung/scsp/common/PreferenceItem;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/scsp/common/PreferenceItem;->preferences:Lcom/samsung/scsp/common/Preferences;

    iget-object v0, v0, Lcom/samsung/scsp/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/scsp/common/PreferenceItem;->name:Ljava/lang/String;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static synthetic lambda$static$4(Lcom/samsung/scsp/common/PreferenceItem;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/common/PreferenceItem;->preferences:Lcom/samsung/scsp/common/Preferences;

    iget-object v0, v0, Lcom/samsung/scsp/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/scsp/common/PreferenceItem;->name:Ljava/lang/String;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private static synthetic lambda$static$5(Lcom/samsung/scsp/common/PreferenceItem;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/scsp/common/PreferenceItem;->preferences:Lcom/samsung/scsp/common/Preferences;

    iget-object v0, v0, Lcom/samsung/scsp/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/scsp/common/PreferenceItem;->name:Ljava/lang/String;

    check-cast p1, Ljava/util/Set;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/scsp/common/PreferenceItem;->SETTERS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/scsp/framework/core/common/BiConsumer;

    invoke-interface {v0, p0, p1}, Lcom/samsung/scsp/framework/core/common/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/scsp/common/f;

    invoke-direct {v0, p0}, Lcom/samsung/scsp/common/f;-><init>(Lcom/samsung/scsp/common/PreferenceItem;)V

    iget-object v1, p0, Lcom/samsung/scsp/common/PreferenceItem;->defaultValue:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/samsung/scsp/error/FaultBarrier;->get(Lcom/samsung/scsp/error/FaultBarrier$ThrowableSupplier;Ljava/lang/Object;)Lcom/samsung/scsp/error/Response;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/scsp/error/Response;->obj:Ljava/lang/Object;

    return-object v0
.end method

.method public remove()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/scsp/common/PreferenceItem;->preferences:Lcom/samsung/scsp/common/Preferences;

    iget-object v0, v0, Lcom/samsung/scsp/common/Preferences;->sharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/scsp/common/PreferenceItem;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
