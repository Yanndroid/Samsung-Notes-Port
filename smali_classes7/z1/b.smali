.class public final synthetic Lz1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz1/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lz1/b;->b:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lz1/b;->a:Landroid/content/Context;

    iget-object v1, p0, Lz1/b;->b:Ljava/io/File;

    invoke-static {v0, v1}, Lz1/d;->b(Landroid/content/Context;Ljava/io/File;)V

    return-void
.end method
