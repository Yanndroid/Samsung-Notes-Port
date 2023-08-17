.class public Lcom/microsoft/identity/common/java/cache/MapBackedPreferencesManager$MapBackedPreferencesManagerBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/microsoft/identity/common/java/cache/MapBackedPreferencesManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapBackedPreferencesManagerBuilder"
.end annotation


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/microsoft/identity/common/java/cache/MapBackedPreferencesManager;
    .locals 2

    new-instance v0, Lcom/microsoft/identity/common/java/cache/MapBackedPreferencesManager;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/MapBackedPreferencesManager$MapBackedPreferencesManagerBuilder;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/microsoft/identity/common/java/cache/MapBackedPreferencesManager;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public name(Ljava/lang/String;)Lcom/microsoft/identity/common/java/cache/MapBackedPreferencesManager$MapBackedPreferencesManagerBuilder;
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/cache/MapBackedPreferencesManager$MapBackedPreferencesManagerBuilder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MapBackedPreferencesManager.MapBackedPreferencesManagerBuilder(name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/cache/MapBackedPreferencesManager$MapBackedPreferencesManagerBuilder;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
