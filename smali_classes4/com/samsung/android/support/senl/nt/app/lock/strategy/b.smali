.class public final synthetic Lcom/samsung/android/support/senl/nt/app/lock/strategy/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/b;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/b;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/app/lock/strategy/b;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/samsung/android/support/senl/nt/app/lock/strategy/LockManagerStrategy;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
