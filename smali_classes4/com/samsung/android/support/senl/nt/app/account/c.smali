.class public final synthetic Lcom/samsung/android/support/senl/nt/app/account/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/account/c;->a:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/account/c;->b:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/account/c;->a:Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/account/c;->b:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;->a(Lcom/samsung/android/support/senl/nt/app/account/GUIDManager;Landroid/app/Activity;)V

    return-void
.end method
