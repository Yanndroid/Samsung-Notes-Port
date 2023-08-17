.class public final synthetic Lcom/samsung/android/support/senl/nt/data/common/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/data/common/utils/b;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/data/common/utils/b;->a:Landroid/content/Context;

    check-cast p1, Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/data/common/utils/NotesDocumentDeleteUtils;->b(Landroid/content/Context;Lcom/samsung/android/support/senl/nt/data/common/constants/DocumentData;)V

    return-void
.end method
