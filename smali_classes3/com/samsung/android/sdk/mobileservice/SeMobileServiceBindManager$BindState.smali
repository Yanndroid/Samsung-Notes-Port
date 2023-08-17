.class final enum Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BindState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;

.field public static final enum BINDING:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;

.field public static final enum BOUND:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;

.field public static final enum UNBOUND:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;

    const-string v1, "UNBOUND"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;->UNBOUND:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;

    new-instance v1, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;

    const-string v3, "BINDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;->BINDING:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;

    new-instance v3, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;

    const-string v5, "BOUND"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;->BOUND:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;->$VALUES:[Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;->$VALUES:[Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;

    return-object v0
.end method


# virtual methods
.method public isBound()Z
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;->BOUND:Lcom/samsung/android/sdk/mobileservice/SeMobileServiceBindManager$BindState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
