.class public final synthetic Lcom/samsung/android/support/senl/nt/app/lock/strategy/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/lock/view/convert/VerifyConvertPasswordDialog$ResultListener;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;

.field public final synthetic b:Landroid/content/Intent;

.field public final synthetic c:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;Landroid/content/Intent;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/h;->a:Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/h;->b:Landroid/content/Intent;

    iput-object p3, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/h;->c:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/h;->a:Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/h;->b:Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/h;->c:Landroid/app/Activity;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;->c(Lcom/samsung/android/support/senl/nt/app/lock/strategy/VerifyStrategy;Landroid/content/Intent;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
