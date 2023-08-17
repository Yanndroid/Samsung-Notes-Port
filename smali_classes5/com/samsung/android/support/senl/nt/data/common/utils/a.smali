.class public final synthetic Lcom/samsung/android/support/senl/nt/data/common/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/utils/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/data/common/utils/a;->b:Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/utils/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/data/common/utils/a;->b:Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentDeleteUtils;->a(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;)V

    return-void
.end method
