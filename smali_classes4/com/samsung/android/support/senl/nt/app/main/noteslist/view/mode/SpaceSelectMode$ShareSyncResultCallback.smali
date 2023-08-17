.class Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$ShareSyncResultCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/social/share/ShareApi$ShareSyncResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareSyncResultCallback"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShareSyncResultCallback"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/support/senl/nt/app/main/noteslist/view/mode/SpaceSelectMode$ShareSyncResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;->getResult()Z

    move-result p1

    const-string v0, "ShareSyncResultCallback"

    if-eqz p1, :cond_0

    const-string p1, "Share Service is updated!"

    goto :goto_0

    :cond_0
    const-string p1, "Share Service is not updated!"

    :goto_0
    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
