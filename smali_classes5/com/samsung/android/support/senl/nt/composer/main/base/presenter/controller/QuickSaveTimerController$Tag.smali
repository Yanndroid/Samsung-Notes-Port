.class public final enum Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;

.field public static final enum Default:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;

.field public static final enum OnDragAndDrop:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;

    const-string v1, "Default"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;->Default:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;

    new-instance v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;

    const-string v3, "OnDragAndDrop"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;->OnDragAndDrop:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;
    .locals 1

    const-class v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;
    .locals 1

    sget-object v0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;->$VALUES:[Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;

    invoke-virtual {v0}, [Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/controller/QuickSaveTimerController$Tag;

    return-object v0
.end method
