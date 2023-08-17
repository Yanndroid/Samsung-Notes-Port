.class public Lw2/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/network/networkutils/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lw2/j;->i(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/notes/sync/db/s;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lw2/j;


# direct methods
.method public constructor <init>(Lw2/j;)V
    .locals 0

    iput-object p1, p0, Lw2/j$a;->a:Lw2/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lw2/j$a;->a:Lw2/j;

    iget-object v1, v0, Lw2/a;->b:Lx2/g;

    iget-object v0, v0, Lw2/a;->c:Lp2/a;

    const-string v2, "SyncSDocxUpdateLocalNote"

    invoke-virtual {v1, v0, v2}, Lx2/g;->h(Lp2/a;Ljava/lang/String;)V

    return-void
.end method
