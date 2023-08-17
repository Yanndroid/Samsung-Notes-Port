.class public Lz1/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/cm/base/framework/securefolder/SecureFolderCompat$SupportChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz1/d;->z(Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lz1/d$c;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ZLjava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lz1/d$c;->a:Landroid/content/Context;

    if-eqz p1, :cond_0

    sget p1, Lcom/samsung/android/support/notes/sync/R$string;->action_move_to:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/samsung/android/support/notes/sync/R$string;->action_move_out_of:I

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object p2, p0, Lz1/d$c;->a:Landroid/content/Context;

    sget v3, Lcom/samsung/android/support/notes/sync/R$string;->secure_folder:I

    invoke-virtual {p2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onContainerTypeSupported(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lz1/d;->c()[I

    move-result-object v0

    const/4 v1, 0x0

    aput p1, v0, v1

    invoke-static {}, Lz1/d;->e()[Z

    move-result-object p1

    const/4 v0, 0x1

    aput-boolean v0, p1, v1

    invoke-static {}, Lz1/d;->d()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p2}, Lz1/d$c;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    return-void
.end method

.method public onPersonalTypeSupported(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lz1/d;->c()[I

    move-result-object v0

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {}, Lz1/d;->e()[Z

    move-result-object p1

    aput-boolean v1, p1, v1

    invoke-static {}, Lz1/d;->d()[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lz1/d$c;->a(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    return-void
.end method
