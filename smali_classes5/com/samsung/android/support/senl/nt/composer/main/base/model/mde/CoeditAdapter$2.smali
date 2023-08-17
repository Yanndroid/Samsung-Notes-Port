.class Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/MdeInfoResolver$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->snapCoedit(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

.field public final synthetic val$filePath:Ljava/lang/String;

.field public final synthetic val$groupId:Ljava/lang/String;

.field public final synthetic val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

.field public final synthetic val$spaceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$2;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$2;->val$filePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$2;->val$groupId:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$2;->val$spaceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .locals 7

    invoke-static {}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "snapCoedit# connected session"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->a(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$2;->val$note:Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;

    iget-object v3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$2;->val$filePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$2;->val$groupId:Ljava/lang/String;

    iget-object v5, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$2;->val$spaceId:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$2;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;->c(Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter;)Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallbackWrapper;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ICoeditController;->internalSnapStart(Lcom/samsung/android/sdk/pen/worddoc/SpenWNote;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/support/senl/nt/composer/main/base/model/mde/CoeditAdapter$ActionCallback;)V

    return-void
.end method
