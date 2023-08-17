.class public final synthetic Lcom/samsung/android/support/senl/nt/base/winset/app/permission/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/b;->a:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/b;->a:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/samsung/android/support/senl/nt/base/winset/app/permission/PermissionHelper;->a(Landroid/app/Activity;Landroid/content/DialogInterface;I)V

    return-void
.end method
