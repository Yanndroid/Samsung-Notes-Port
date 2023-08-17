.class Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener;->onPageChanged(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener;

.field public final synthetic val$changedInfoList:Ljava/util/ArrayList;

.field public final synthetic val$isEditingByCoedit:Z

.field public final synthetic val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field public final synthetic val$pageList:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener$1;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener$1;->val$changedInfoList:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener$1;->val$pageList:Ljava/util/ArrayList;

    iput-boolean p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener$1;->val$isEditingByCoedit:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener$1;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener$1;->val$changedInfoList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener$1;->val$pageList:Ljava/util/ArrayList;

    iget-boolean v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener$1;->val$isEditingByCoedit:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/presenter/composer/listener/SpenPageEventListener;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)V

    return-void
.end method
