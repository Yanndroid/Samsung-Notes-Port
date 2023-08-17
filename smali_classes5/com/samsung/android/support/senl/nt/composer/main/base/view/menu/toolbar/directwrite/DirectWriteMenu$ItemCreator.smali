.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu$ItemCreator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemCreator"
.end annotation


# instance fields
.field public constructor:Ljava/lang/reflect/Constructor;

.field public initArgs:[Ljava/lang/Object;


# direct methods
.method private constructor <init>(Ljava/lang/reflect/Constructor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu$ItemCreator;->constructor:Ljava/lang/reflect/Constructor;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/reflect/Constructor;Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu$ItemCreator;-><init>(Ljava/lang/reflect/Constructor;)V

    return-void
.end method

.method private varargs constructor <init>(Ljava/lang/reflect/Constructor;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu$ItemCreator;->constructor:Ljava/lang/reflect/Constructor;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu$ItemCreator;->initArgs:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public create(Landroid/view/View;)Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/item/DwMenuItem;
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu$ItemCreator;->initArgs:[Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu$ItemCreator;->constructor:Ljava/lang/reflect/Constructor;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/item/DwMenuItem;

    goto :goto_1

    :cond_0
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v2, :cond_1

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu$ItemCreator;->constructor:Ljava/lang/reflect/Constructor;

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v0, v0, v1

    aput-object v0, v4, v1

    aput-object p1, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu$ItemCreator;->constructor:Ljava/lang/reflect/Constructor;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aget-object v6, v0, v1

    aput-object v6, v5, v1

    aget-object v0, v0, v2

    aput-object v0, v5, v2

    aput-object p1, v5, v4

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    return-object p1

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    :goto_2
    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/toolbar/directwrite/DirectWriteMenu;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
