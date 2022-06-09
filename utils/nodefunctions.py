def convert_size(slurm_mem):
    gibimibi=1024 # ratio from gibibytes to mebibytes (same for Tebibyt to GibiByte)
    mem = slurm_mem.replace('M','')
    mem = mem.replace('G','')
    mem = mem.replace('T','')
    mem=float(mem)
    # Convert Gibibytes to Mibibytes
    if 'T' in slurm_mem:
        mem = mem * gibimibi * gibimibi 
    elif 'G' in slurm_mem:
        mem = mem * gibimibi
    elif 'M' in slurm_mem: #already in MebiBytes (slurms working unit)
        pass
    else:
        1/0  #error
    return int(mem)

class Node:
    '''class containing node specific info'''
    def __init__(
            self,
            name: str,
            cpu: int,
            memory: float
        ):
        self.name = name
        self.cpu = cpu
        self.memory = memory

class PartitionResources:
    '''Class for keeping track of Partition Resources.'''
    cpu: int
    memory: float

    cpu_total: int
    memory_total: float

    def __init__(
            self, 
            cpu_total: float,
            memory_total: float
        ):
        self.cpu_total = cpu_total
        self.memory_total = memory_total

    # def add_job(self, incpu, inmemory):
    #     cpu=cpu
        
    #     return self.unit_price * self.quantity_on_hand
    
    # def __repr__(self) -> str:
    #     return (
    #         'InventoryItem('
    #         f'name={self.name!r}, unit_price={self.unit_price!r}, '
    #         f'quantity_on_hand={self.quantity_on_hand!r})'

    # def __hash__(self) -> int:
    #     return hash((self.name, self.unit_price, self.quantity_on_hand))

    # def __eq__(self, other) -> bool:
    #     if not isinstance(other, InventoryItem):
    #         return NotImplemented
    #     return (
    #         (self.name, self.unit_price, self.quantity_on_hand) == 
    #         (other.name, other.unit_price, other.quantity_on_hand))