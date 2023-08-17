.class public Lorg/apache/poi/java/awt/CheckboxGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x33c2d73b60b5ea17L


# instance fields
.field public selectedCheckbox:Lorg/apache/poi/java/awt/Checkbox;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/java/awt/CheckboxGroup;->selectedCheckbox:Lorg/apache/poi/java/awt/Checkbox;

    return-void
.end method


# virtual methods
.method public getCurrent()Lorg/apache/poi/java/awt/Checkbox;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/java/awt/CheckboxGroup;->selectedCheckbox:Lorg/apache/poi/java/awt/Checkbox;

    return-object v0
.end method

.method public getSelectedCheckbox()Lorg/apache/poi/java/awt/Checkbox;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/CheckboxGroup;->getCurrent()Lorg/apache/poi/java/awt/Checkbox;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized setCurrent(Lorg/apache/poi/java/awt/Checkbox;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p1, Lorg/apache/poi/java/awt/Checkbox;->group:Lorg/apache/poi/java/awt/CheckboxGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, p0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/apache/poi/java/awt/CheckboxGroup;->selectedCheckbox:Lorg/apache/poi/java/awt/Checkbox;

    iput-object p1, p0, Lorg/apache/poi/java/awt/CheckboxGroup;->selectedCheckbox:Lorg/apache/poi/java/awt/Checkbox;

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    iget-object v1, v0, Lorg/apache/poi/java/awt/Checkbox;->group:Lorg/apache/poi/java/awt/CheckboxGroup;

    if-ne v1, p0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/poi/java/awt/Checkbox;->setState(Z)V

    :cond_1
    if-eqz p1, :cond_2

    if-eq v0, p1, :cond_2

    invoke-virtual {p1}, Lorg/apache/poi/java/awt/Checkbox;->getState()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/poi/java/awt/Checkbox;->setStateInternal(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSelectedCheckbox(Lorg/apache/poi/java/awt/Checkbox;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/poi/java/awt/CheckboxGroup;->setCurrent(Lorg/apache/poi/java/awt/Checkbox;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[selectedCheckbox="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/poi/java/awt/CheckboxGroup;->selectedCheckbox:Lorg/apache/poi/java/awt/Checkbox;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
