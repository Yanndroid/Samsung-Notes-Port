.class final Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion$PenInfoManagerHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PenInfoManagerHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c2\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0013\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\n\n\u0002\u0008\u0007\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion$PenInfoManagerHolder;",
        "",
        "()V",
        "INSTANCE",
        "Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;",
        "getINSTANCE",
        "()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;",
        "INSTANCE$1",
        "ntAddons_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion$PenInfoManagerHolder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final INSTANCE$1:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion$PenInfoManagerHolder;

    invoke-direct {v0}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion$PenInfoManagerHolder;-><init>()V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion$PenInfoManagerHolder;->INSTANCE:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion$PenInfoManagerHolder;

    new-instance v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion$PenInfoManagerHolder;->INSTANCE$1:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getINSTANCE()Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager$Companion$PenInfoManagerHolder;->INSTANCE$1:Lcom/samsung/android/support/senl/addons/brush/model/pen/PenInfoManager;

    return-object v0
.end method
