.class public Lv0/c;
.super Lv0/a;
.source "SourceFile"


# instance fields
.field public c:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
    .locals 0

    invoke-direct {p0}, Lv0/a;-><init>()V

    iput-object p1, p0, Lv0/c;->c:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lt0/i;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/notes/sync/utils/a;->D(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lb3/m;

    invoke-direct {v0}, Lb3/m;-><init>()V

    new-instance v1, Lt0/a;

    iget-object v2, p0, Lv0/c;->c:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    invoke-direct {v1, v2, v0}, Lt0/a;-><init>(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    iput-object v1, p0, Lt0/i;->b:Lt0/g;

    invoke-interface {v1}, Lt0/g;->a()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->b()La0/a;

    move-result-object v0

    iget-object v1, p0, Lt0/i;->a:Landroid/content/Context;

    const/4 v2, 0x3

    invoke-interface {v0, v1, v2}, La0/a;->show(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method
