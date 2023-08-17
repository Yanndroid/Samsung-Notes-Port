.class public final enum Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

.field public static final enum DESTROYED_WITHOUT_SAVE:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

.field public static final enum DESTROYED_WITH_SAVE:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

.field public static final enum INITIALIZED:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

.field public static final enum RESUME:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

    const-string v1, "INITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;->INITIALIZED:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

    const-string v3, "DESTROYED_WITH_SAVE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;->DESTROYED_WITH_SAVE:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

    new-instance v3, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

    const-string v5, "DESTROYED_WITHOUT_SAVE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;->DESTROYED_WITHOUT_SAVE:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

    new-instance v5, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

    const-string v7, "RESUME"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;->RESUME:Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/composer/main/base/external/tageditor/controller/StateChangeListener$State;

    return-object v0
.end method
