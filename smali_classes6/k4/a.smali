.class public final synthetic Lk4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk4/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lk4/a;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lk4/a;->a:Landroid/content/Context;

    iget-object v1, p0, Lk4/a;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/data/resolver/DocumentWriteResolver;->a(Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method
