.class public final synthetic Lcom/samsung/android/support/senl/nt/app/account/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/account/f;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/account/f;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/account/f;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/account/f;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager$1;->a(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method
