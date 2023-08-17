.class public Lv0/d;
.super Lv0/a;
.source "SourceFile"


# instance fields
.field public c:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;)V
    .locals 0

    invoke-direct {p0}, Lv0/a;-><init>()V

    iput-object p1, p0, Lv0/d;->c:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    new-instance v0, Lb3/n;

    invoke-direct {v0}, Lb3/n;-><init>()V

    new-instance v1, Lt0/b;

    iget-object v2, p0, Lv0/d;->c:Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;

    invoke-direct {v1, v2, v0}, Lt0/b;-><init>(Lcom/samsung/android/app/notes/sync/constants/DocTypeConstants;Lcom/samsung/android/support/senl/nt/base/common/tipcard/TipCard;)V

    iput-object v1, p0, Lt0/i;->b:Lt0/g;

    invoke-interface {v1}, Lt0/g;->a()V

    return-void
.end method
